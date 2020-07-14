.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b775, %rax
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
and $0xffffffffffffffc0, %rax
vmovaps %ymm0, (%rax)
add %rdi, %rdi
lea addresses_WT_ht+0x510f, %r13
xor $25339, %r12
mov $0x6162636465666768, %r10
movq %r10, (%r13)
and %r10, %r10
lea addresses_normal_ht+0x740f, %r12
clflush (%r12)
nop
add %r10, %r10
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1620f, %r12
nop
nop
nop
mfence
movl $0x61626364, (%r12)
nop
nop
sub $26510, %rdi
lea addresses_A_ht+0x1e94d, %r12
add $33428, %rdi
mov (%r12), %rsi
nop
and $52017, %rdi
lea addresses_normal_ht+0xcf8f, %r10
nop
nop
lfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x11271, %rsi
lea addresses_WC_ht+0x314f, %rdi
nop
nop
nop
nop
cmp $54623, %r12
mov $38, %rcx
rep movsw
inc %rax
lea addresses_A_ht+0x1ccf, %rsi
lea addresses_WC_ht+0x350f, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $10, %rcx
rep movsw
cmp $35118, %r10
lea addresses_WT_ht+0x1890f, %rsi
nop
xor $32736, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp $7356, %r10
lea addresses_UC_ht+0x132f, %r12
xor $42886, %rbx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1e0f, %rsi
lea addresses_WT_ht+0x10e0f, %rdi
nop
nop
xor $7640, %r10
mov $12, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x1aad7, %rsi
lea addresses_WC_ht+0xc7a7, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
mov $115, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x16dbf, %r13
nop
nop
nop
and $1531, %r12
vmovups (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_PSE+0x1900f, %rbp
nop
nop
sub $39066, %r11
movw $0x5152, (%rbp)
nop
nop
inc %r14

// Store
lea addresses_WT+0x17e0f, %rbx
nop
nop
and $19977, %r14
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $4436, %rsi

// Store
lea addresses_UC+0x1c88a, %r13
nop
nop
nop
nop
add $50842, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
sub $31863, %rbp

// Faulty Load
lea addresses_WT+0x17e0f, %rsi
nop
nop
nop
nop
nop
add $17470, %r15
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'45': 2501, '49': 42, '47': 1, '00': 19285}
00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00
*/
