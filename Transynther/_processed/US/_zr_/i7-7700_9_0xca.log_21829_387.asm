.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x132d5, %rsi
lea addresses_A_ht+0x689, %rdi
add $55713, %r9
mov $83, %rcx
rep movsl
nop
nop
nop
nop
cmp $19044, %rsi
lea addresses_D_ht+0x6549, %rsi
lea addresses_UC_ht+0x7289, %rdi
nop
cmp $29502, %r9
mov $7, %rcx
rep movsl
xor $56705, %r9
lea addresses_D_ht+0x7c89, %rsi
lea addresses_A_ht+0x3011, %rdi
nop
nop
nop
add %r14, %r14
mov $51, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x15d19, %rax
nop
nop
nop
nop
nop
add $7311, %r13
mov (%rax), %r14d
nop
xor $2719, %r9
lea addresses_normal_ht+0xb689, %rsi
lea addresses_A_ht+0x5b8d, %rdi
nop
nop
sub %r15, %r15
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
and $11167, %rcx
lea addresses_A_ht+0x1eac9, %rsi
lea addresses_UC_ht+0x142a1, %rdi
sub %r9, %r9
mov $25, %rcx
rep movsb
nop
nop
nop
nop
sub $26098, %r13
lea addresses_D_ht+0x947d, %rcx
nop
nop
inc %r14
mov (%rcx), %ax
nop
nop
nop
nop
nop
add $48926, %rsi
lea addresses_WT_ht+0xa19, %rcx
nop
nop
add %r13, %r13
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
dec %rdi
lea addresses_D_ht+0x1aff, %r14
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
sub $63740, %r14
lea addresses_D_ht+0x7689, %rsi
lea addresses_WC_ht+0x9489, %rdi
nop
nop
nop
nop
nop
cmp $24413, %r14
mov $98, %rcx
rep movsw
nop
and $567, %rcx
lea addresses_WT_ht+0x1cd69, %rax
clflush (%rax)
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rax)
nop
sub %rdi, %rdi
lea addresses_A_ht+0x16689, %r9
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
sub $63122, %r9
lea addresses_normal_ht+0x9c89, %rsi
nop
nop
nop
nop
nop
xor %rax, %rax
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rdi
nop
sub $13107, %r13
lea addresses_WT_ht+0x8689, %rsi
lea addresses_D_ht+0xef19, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $35528, %r13
mov $66, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_UC_ht+0x2e89, %rax
nop
nop
nop
sub $20540, %rsi
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
and $45058, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
mov $0x15d9390000000c6d, %rdi
nop
nop
nop
nop
nop
sub $19482, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdi)
nop
sub $38787, %rdx

// Store
lea addresses_RW+0xceb9, %rcx
clflush (%rcx)
nop
dec %rdx
movb $0x51, (%rcx)
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_UC+0x8689, %rdx
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rdx), %r8d
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x1e689, %r15
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
