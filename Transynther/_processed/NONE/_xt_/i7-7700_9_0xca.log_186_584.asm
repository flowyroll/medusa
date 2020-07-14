.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe573, %rbx
nop
nop
nop
cmp $16798, %rsi
movl $0x61626364, (%rbx)
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1973, %rsi
lea addresses_UC_ht+0xe573, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $85, %rcx
rep movsq
nop
nop
nop
sub $17837, %rbx
lea addresses_D_ht+0xeb73, %rbx
nop
nop
nop
nop
sub $43426, %rdi
mov (%rbx), %r15d
sub $683, %rdi
lea addresses_normal_ht+0x4b74, %rsi
lea addresses_D_ht+0x2d73, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $28, %rcx
rep movsw
nop
nop
nop
nop
dec %r15
lea addresses_WT_ht+0x1497a, %rsi
lea addresses_WT_ht+0x16083, %rdi
nop
inc %r13
mov $119, %rcx
rep movsw
nop
dec %rbx
lea addresses_WC_ht+0x1820b, %r12
inc %rax
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
cmp %rdi, %rdi
lea addresses_WT_ht+0x17873, %rsi
lea addresses_WC_ht+0xbcb, %rdi
nop
nop
nop
and $38432, %rbx
mov $70, %rcx
rep movsl
nop
inc %rax
lea addresses_A_ht+0xf973, %r13
nop
nop
nop
xor $55408, %rbx
movb (%r13), %cl
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x2753, %rbx
nop
nop
nop
xor $14808, %rcx
movb (%rbx), %al
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x12d73, %rsi
lea addresses_D+0xf293, %rdi
nop
nop
inc %rbx
mov $22, %rcx
rep movsb
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_normal+0xe573, %rsi
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rsi), %cx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'34': 186}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
