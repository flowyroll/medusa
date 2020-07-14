.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bd53, %rsi
nop
nop
nop
nop
nop
and $30164, %rcx
mov (%rsi), %r11d
nop
cmp %r10, %r10
lea addresses_WT_ht+0x9fd3, %r12
nop
nop
nop
nop
and %r11, %r11
movb $0x61, (%r12)
nop
nop
xor $23043, %r11
lea addresses_UC_ht+0x14b13, %rsi
lea addresses_WT_ht+0x14c53, %rdi
nop
nop
and %r13, %r13
mov $33, %rcx
rep movsq
add $24733, %r12
lea addresses_D_ht+0x10153, %rsi
lea addresses_D_ht+0x1a7dc, %rdi
nop
nop
nop
nop
inc %r13
mov $119, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x5953, %rsi
lea addresses_WT_ht+0x1a813, %rdi
nop
nop
nop
nop
nop
cmp $11681, %r8
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x1cb33, %r12
nop
nop
nop
add $59572, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r12
vmovntdq %ymm6, (%r12)
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x753, %r13
nop
nop
nop
nop
cmp %rcx, %rcx
movb (%r13), %r10b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x16553, %r13
nop
nop
nop
nop
nop
and %r11, %r11
movb (%r13), %cl
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x1a993, %r8
nop
nop
nop
and $14749, %r11
movb (%r8), %r10b
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x17af3, %rsi
lea addresses_normal_ht+0x5b53, %rdi
cmp $59483, %r8
mov $76, %rcx
rep movsl
nop
nop
nop
nop
xor $27109, %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1a963, %rsi
lea addresses_normal+0x7f3, %rdi
nop
nop
nop
and $49122, %r11
mov $3, %rcx
rep movsw
nop
nop
and $14635, %rdx

// Load
mov $0x28cf910000000053, %rbx
clflush (%rbx)
cmp %r8, %r8
mov (%rbx), %edx
nop
and %rdx, %rdx

// Load
mov $0x753, %rsi
cmp %r8, %r8
mov (%rsi), %rdi
nop
cmp $18479, %rbx

// Store
lea addresses_RW+0x1bd53, %rcx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
and $23463, %r11

// Load
lea addresses_UC+0x10153, %r8
nop
sub %rsi, %rsi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
sub %rdi, %rdi

// Store
mov $0x267e7d0000000153, %rbx
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0x3553, %rdi
nop
nop
nop
nop
nop
add $53892, %rdx
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'00': 4, '47': 2, '34': 7}
34 34 47 34 00 00 47 00 34 00 34 34 34
*/
