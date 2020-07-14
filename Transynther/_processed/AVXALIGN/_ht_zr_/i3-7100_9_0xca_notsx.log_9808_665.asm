.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xaaff, %r8
clflush (%r8)
nop
nop
nop
inc %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x5b71, %rsi
nop
nop
nop
nop
lfence
mov (%rsi), %ebx
nop
nop
lfence
lea addresses_A_ht+0x156bf, %rsi
inc %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x1eeff, %rcx
nop
nop
sub $16332, %r15
movb $0x61, (%rcx)
nop
nop
cmp $10647, %r15
lea addresses_WT_ht+0x80b9, %rsi
lea addresses_WC_ht+0x297f, %rdi
clflush (%rdi)
nop
nop
dec %rbx
mov $66, %rcx
rep movsb
nop
nop
nop
xor $38084, %rdx
lea addresses_A_ht+0x1b05f, %rsi
clflush (%rsi)
nop
nop
cmp $43053, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rsi)
lfence
lea addresses_WC_ht+0x44cb, %r13
nop
cmp $193, %rcx
movb $0x61, (%r13)
inc %rdx
lea addresses_A_ht+0x1e17f, %rsi
lea addresses_D_ht+0x1aeff, %rdi
clflush (%rsi)
sub $32326, %r8
mov $115, %rcx
rep movsl
nop
nop
nop
nop
nop
and $47890, %r8
lea addresses_normal_ht+0x1429f, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r13
movntdq %xmm1, (%r13)
nop
nop
nop
nop
dec %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_A+0x1b2ff, %rbp
nop
sub %rsi, %rsi
vmovntdqa (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'45': 6748, '00': 2, '49': 3058}
49 45 49 45 45 45 49 45 45 45 49 49 49 45 49 45 49 45 45 45 45 45 49 49 49 45 49 45 45 49 49 45 45 45 49 49 45 49 45 49 45 45 49 45 45 49 45 45 49 45 49 45 49 49 45 49 45 49 49 45 45 49 45 49 49 49 49 45 45 49 45 45 49 45 45 45 45 45 49 45 45 49 49 49 45 49 45 49 45 45 45 45 49 49 45 49 49 45 49 45 49 45 45 49 49 49 45 45 45 45 49 45 49 49 45 45 45 45 45 45 45 49 45 49 45 45 45 49 45 45 49 49 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 49 45 45 49 45 45 49 49 49 45 49 45 45 45 45 49 49 45 45 49 49 49 49 45 45 49 45 45 45 49 49 49 49 49 45 45 45 45 45 49 45 45 49 45 45 45 49 49 45 49 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 49 49 49 45 45 49 45 49 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 49 49 45 45 45 49 49 49 45 45 45 45 49 45 45 45 49 49 45 45 45 45 49 45 49 45 45 49 49 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 49 49 45 45 45 49 49 45 45 49 49 49 49 45 49 49 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 49 49 49 45 49 49 49 49 45 45 49 45 45 45 45 45 45 45 45 49 49 49 45 45 49 45 45 45 45 49 49 45 45 45 45 45 49 49 45 49 45 49 45 45 45 49 45 49 45 45 45 49 45 45 49 45 45 45 45 49 49 45 45 49 45 49 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 49 45 49 45 45 45 49 49 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 49 45 49 45 45 49 49 45 45 45 45 45 45 45 45 49 45 49 45 45 49 45 49 49 45 49 49 49 45 49 45 45 45 49 45 49 45 45 45 45 45 49 45 49 45 45 49 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 49 49 49 45 45 45 45 45 45 49 45 45 45 45 00 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 49 45 45 49 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 49 49 45 45 49 49 45 45 45 49 49 49 49 45 49 49 49 49 49 49 49 49 45 45 49 49 45 45 49 49 49 49 49 49 45 45 49 49 49 45 49 45 45 45 45 49 49 49 49 45 45 49 49 49 49 45 45 49 45 49 49 45 45 49 49 45 45 45 45 49 49 45 49 45 45 45 45 49 49 49 45 45 45 45 45 49 49 45 49 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 49 49 45 45 49 45 45 45 49 45 45 45 49 45 45 45 49 49 49 49 49 45 49 45 45 45 45 49 45 49 45 45 45 49 49 45 45 45 45 49 45 45 49 45 49 45 45 45 49 49 45 49 49 49 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 49 45 45 49 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 49 49 45 45 45 45 45 45 49 49 45 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 49 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 49 45 45 45 45 45 45 49 49 45 49 49 45 45 49 45 45 45 45 45 49 49 45 45 49 49 45 45 45 49 49 45 49 45 45 49 45 49 45 49 45 45 49 49 45 49 45 45 45 45 45 45 49 45 45 49 45 49 45 49 45 49 45 45 45 49 45 45 45 45 49 45 49 45 45 49 45 49 49 49 45 49 45 45
*/
