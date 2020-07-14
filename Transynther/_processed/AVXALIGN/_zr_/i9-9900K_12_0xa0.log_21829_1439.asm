.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e2b, %rsi
lea addresses_WC_ht+0x193ab, %rdi
clflush (%rsi)
nop
nop
cmp %r13, %r13
mov $2, %rcx
rep movsb
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x14eb, %rbx
nop
nop
nop
add $44372, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
and $0xffffffffffffffc0, %rbx
vmovaps %ymm6, (%rbx)
nop
nop
dec %rdx
lea addresses_D_ht+0xf3ab, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x242b, %rsi
lea addresses_WC_ht+0xb62b, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $31, %rcx
rep movsl
nop
nop
cmp $7442, %rbx
lea addresses_WT_ht+0xe3e3, %rbx
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rbx)
nop
and %r13, %r13
lea addresses_WT_ht+0x2c2b, %rsi
lea addresses_WT_ht+0x191eb, %rdi
nop
nop
xor $16107, %r15
mov $7, %rcx
rep movsw
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x13973, %rbx
nop
nop
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x262b, %r13
nop
nop
add $29520, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r13
vmovntdq %ymm6, (%r13)
nop
nop
nop
nop
nop
xor $40590, %r13
lea addresses_A_ht+0xbbd, %rcx
nop
nop
sub $39998, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x97ab, %rbx
nop
nop
nop
nop
nop
inc %rcx
mov (%rbx), %r15
nop
cmp $44750, %rsi
lea addresses_normal_ht+0x122b, %rdx
nop
nop
add $35832, %rsi
movb (%rdx), %cl
nop
nop
nop
nop
nop
sub $51139, %r15
lea addresses_UC_ht+0x1871b, %rsi
nop
nop
nop
nop
sub $48734, %r15
movb $0x61, (%rsi)
nop
and $34751, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0xf22b, %rbp
nop
nop
nop
nop
add %rsi, %rsi
movntdqa (%rbp), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
