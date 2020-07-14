.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1bd3c, %r15
nop
and %rcx, %rcx
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x58c, %rsi
lea addresses_WC_ht+0xc22c, %rdi
nop
nop
nop
nop
add $12866, %r13
mov $98, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x1962c, %rcx
nop
nop
nop
nop
sub $50763, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1c7fc, %rsi
lea addresses_normal_ht+0x1a62c, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $113, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xe02c, %rdx
nop
nop
inc %r9
movw $0x6162, (%rdx)
nop
nop
nop
and $14831, %rcx
lea addresses_normal_ht+0x1066f, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $12963, %rdx
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x996c, %r13
nop
dec %r9
mov (%r13), %di
nop
nop
nop
sub $31888, %r13
lea addresses_D_ht+0x1306c, %rdi
nop
nop
nop
nop
nop
add $56439, %r13
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
inc %r9
lea addresses_WT_ht+0xba2c, %r13
nop
add $14075, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r13)
nop
and $27036, %rsi
lea addresses_A_ht+0x7842, %rsi
lea addresses_normal_ht+0x432c, %rdi
nop
nop
xor %rbp, %rbp
mov $47, %rcx
rep movsq
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0xd6c, %rdi
nop
nop
add $48959, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
and $24024, %rbp
lea addresses_D_ht+0x1deac, %rsi
lea addresses_WC_ht+0x11888, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $1331, %rbp
lea addresses_normal_ht+0x1e86c, %rcx
nop
sub $49228, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x772c, %rsi
lea addresses_WC_ht+0x3fcc, %rdi
nop
dec %r15
mov $123, %rcx
rep movsq
nop
nop
nop
sub $10162, %rcx
lea addresses_WC_ht+0xcec1, %rsi
lea addresses_normal_ht+0x3db, %rdi
dec %rdx
mov $32, %rcx
rep movsb
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_RW+0x422c, %rcx
clflush (%rcx)
nop
nop
nop
sub $29447, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_RW+0x422c, %rax
nop
nop
nop
nop
nop
inc %r14
mov (%rax), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
