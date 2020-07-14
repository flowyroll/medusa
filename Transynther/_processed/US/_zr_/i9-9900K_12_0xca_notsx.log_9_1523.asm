.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd49c, %rsi
lea addresses_D_ht+0x1291c, %rdi
nop
nop
nop
nop
inc %rbx
mov $64, %rcx
rep movsw
cmp $40027, %rbx
lea addresses_WC_ht+0x1a49c, %rbx
clflush (%rbx)
nop
cmp $53698, %rsi
movb (%rbx), %al
nop
add $1625, %rdi
lea addresses_UC_ht+0x18c9c, %rax
xor %r14, %r14
mov (%rax), %bx
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x7a54, %rax
nop
nop
xor $22082, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x9c9c, %r14
nop
nop
sub $6590, %rdi
movb (%r14), %dl
nop
nop
nop
nop
and $12810, %rdx
lea addresses_UC_ht+0x1569c, %rsi
lea addresses_WT_ht+0xf99c, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $82, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x171ec, %rbx
inc %r14
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
and $34247, %rbx
lea addresses_D_ht+0x1a7c, %rdi
cmp %rax, %rax
movl $0x61626364, (%rdi)
nop
cmp %rax, %rax
lea addresses_WC_ht+0xed04, %rsi
lea addresses_WT_ht+0x669c, %rdi
nop
nop
xor %r12, %r12
mov $113, %rcx
rep movsb
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x462c, %rsi
lea addresses_WT_ht+0x1209c, %rdi
nop
and %r12, %r12
mov $117, %rcx
rep movsb
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x7294, %rbx
xor %rsi, %rsi
movb $0x61, (%rbx)
inc %rdx
lea addresses_UC_ht+0xd01c, %rsi
lea addresses_WC_ht+0x1cec, %rdi
nop
nop
cmp %r12, %r12
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WT_ht+0x1401c, %r12
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x16b9c, %rbp
nop
cmp %rdx, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x12772, %r8
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
add $48729, %r8

// Faulty Load
lea addresses_US+0xc69c, %rbx
nop
nop
xor %rcx, %rcx
mov (%rbx), %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
