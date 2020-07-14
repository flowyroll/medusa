.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1caa8, %r11
sub %rcx, %rcx
mov (%r11), %ebp
nop
nop
nop
and $2858, %r14
lea addresses_WC_ht+0x14960, %r15
and $57827, %r9
mov (%r15), %r11
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0xec28, %rsi
lea addresses_WT_ht+0x3fe4, %rdi
nop
nop
and %r14, %r14
mov $60, %rcx
rep movsw
inc %r9
lea addresses_UC_ht+0x16aa6, %r9
nop
nop
nop
nop
cmp $18371, %r15
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rcx
nop
add %rbp, %rbp
lea addresses_WT_ht+0xfa6e, %rsi
lea addresses_D_ht+0xa490, %rdi
nop
nop
nop
nop
and $53531, %r11
mov $86, %rcx
rep movsl
nop
nop
xor $24440, %r9
lea addresses_WC_ht+0x5774, %rsi
lea addresses_normal_ht+0x21a8, %rdi
nop
nop
nop
nop
nop
and $3976, %r9
mov $70, %rcx
rep movsw
add $60464, %rsi
lea addresses_UC_ht+0xf2c8, %rsi
lea addresses_A_ht+0x19cfd, %rdi
add $58199, %r15
mov $37, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $55852, %rcx
lea addresses_UC_ht+0x98, %rsi
lea addresses_UC_ht+0x18c28, %rdi
nop
nop
nop
cmp $24370, %r14
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $10562, %r15
lea addresses_D_ht+0x9254, %rdi
nop
inc %r9
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
and $38548, %rdi
lea addresses_D_ht+0x19d78, %rsi
lea addresses_WC_ht+0x1c70, %rdi
clflush (%rsi)
inc %r14
mov $25, %rcx
rep movsq
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x2dd8, %r9
cmp $14435, %r15
mov (%r9), %r11d
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x10a68, %r14
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
and %rdi, %rdi
lea addresses_A_ht+0x15628, %r11
nop
inc %rsi
mov (%r11), %r9w
nop
nop
nop
nop
nop
and $63236, %r14
lea addresses_UC_ht+0xb368, %rcx
nop
sub $64193, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Load
lea addresses_normal+0xe332, %r11
nop
nop
sub %r15, %r15
mov (%r11), %r13d
nop
nop
nop
add $58814, %r14

// Store
lea addresses_RW+0x62d0, %rbp
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
sub $19121, %r13

// Store
lea addresses_WC+0xf428, %r11
nop
add $8475, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_US+0xae28, %r15
nop
sub $42917, %r14
vmovaps (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
sub $27359, %r15

// Store
lea addresses_US+0x6138, %rbx
nop
cmp $5791, %rdx
movb $0x51, (%rbx)
nop
dec %r14

// Store
lea addresses_WT+0x628, %rbp
nop
xor $55488, %r14
movw $0x5152, (%rbp)
nop
nop
dec %r11

// Faulty Load
lea addresses_WC+0xf428, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
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
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'46': 3239, '49': 1208, '08': 4, '00': 17058, '48': 311, '40': 2, '70': 1, '6c': 2, 'ff': 2, '42': 2}
00 6c 6c 00 00 00 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 49 00 00 46 49 49 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 46 00 46 00 00 49 00 00 00 00 00 00 00 00 48 46 46 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 49 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 46 49 00 00 46 46 00 00 00 00 48 48 00 48 46 46 48 00 00 00 00 00 00 00 49 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 46 00 00 46 00 00 00 48 48 00 49 46 46 00 00 00 49 00 00 49 00 00 00 00 00 00 48 00 00 49 00 46 00 00 00 00 49 46 00 46 46 00 00 00 00 00 00 46 48 00 00 00 00 00 46 00 46 46 00 00 00 00 49 00 00 00 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 49 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 49 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 49 48 48 48 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 49 00 46 00 00 00 46 00 46 00 49 00 00 00 00 49 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 49 49 00 00 49 00 00 49 00 00 46 00 00 00 00 00 00 00 46 49 46 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 46 46 00 00 00 00 00 49 00 00 46 46 46 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 46 00 00 46 46 00 49 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 46 46 00 46 46 46 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 46 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 49 00 49 46 49 00 00 49 00 00 49 00 00 00 00 00 46 00 00 00 00 00 00 46 46 00 49 46 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 46 49 00 00 46 49 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 46 00 00 46 46 46 49 00 48 48 48 00 00 49 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 00 00 00 00 48 00 46 46 00 46 00 00 00 00 00 46 00 00 00 00 46 00 48 48 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 49 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 48 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 49 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 46 48 46 00 46 00 00 00 49 49 46 00 00 00 46 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 49 46 00 00 00 46 00 00 00 00 00 00 46 48 00 00 00 00 00 00 00 00 00 46 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 46 46 00 00 49 00 00
*/
