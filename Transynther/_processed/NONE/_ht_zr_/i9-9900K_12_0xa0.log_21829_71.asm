.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e17f, %rsi
lea addresses_normal_ht+0x1d59b, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $67, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_D_ht+0x1620d, %rdx
nop
and $30906, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rdx
movaps %xmm4, (%rdx)
nop
nop
and $52613, %rdx
lea addresses_WT_ht+0xe59b, %rsi
nop
inc %r11
mov (%rsi), %rcx
nop
cmp $39279, %r15
lea addresses_WC_ht+0x1711b, %rsi
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rsi)
nop
and %rdi, %rdi
lea addresses_D_ht+0x343b, %rsi
nop
and $28075, %rdx
mov (%rsi), %r15
nop
nop
nop
nop
add $15071, %r15
lea addresses_D_ht+0xcdf, %r11
nop
nop
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xf79b, %rsi
and $2456, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
sub $25622, %rdi
lea addresses_WT_ht+0x619b, %rsi
lea addresses_D_ht+0xd473, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $37, %rcx
rep movsb
and $19588, %r11
lea addresses_WC_ht+0x580b, %rsi
nop
sub $46530, %r11
mov (%rsi), %rdi
nop
nop
cmp $6653, %rdi
lea addresses_WC_ht+0x1e833, %rsi
lea addresses_A_ht+0x1c773, %rdi
nop
nop
nop
nop
and $46528, %r15
mov $83, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $28792, %rdx
lea addresses_normal_ht+0x6d9b, %rdx
nop
nop
and $26159, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x431b, %rdi
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%rdi)
nop
add $3079, %rdx
lea addresses_WC_ht+0x17bcb, %rcx
nop
nop
nop
nop
add $14881, %rsi
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
xor $30826, %r11
lea addresses_A_ht+0x1599b, %r11
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r11)
nop
inc %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x115db, %rbx
nop
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
dec %rsi

// Load
mov $0x71bc3e000000081b, %r15
nop
nop
nop
nop
nop
and %r8, %r8
movups (%r15), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
sub $46933, %r8

// Store
mov $0x1085b900000007e3, %rsi
nop
nop
nop
sub $6243, %r15
movb $0x51, (%rsi)
nop
inc %rsi

// Load
lea addresses_US+0x1b19b, %rsi
nop
cmp $20451, %r10
mov (%rsi), %edx
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0xc79b, %rbx
clflush (%rbx)
nop
inc %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovaps %ymm3, (%rbx)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WC+0x7383, %r8
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r8)
nop
xor $2310, %rdx

// Faulty Load
lea addresses_A+0x1f99b, %r15
nop
nop
nop
nop
xor %r10, %r10
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'44': 5529, '48': 7972, '00': 8328}
00 44 00 00 00 48 44 44 48 48 44 00 00 44 48 00 44 44 00 00 00 48 44 48 48 00 48 48 48 00 00 00 44 00 48 44 48 48 44 48 44 44 00 44 48 44 00 00 00 44 44 44 44 00 48 44 48 48 00 00 44 48 44 44 00 00 00 48 00 44 00 00 48 00 48 44 48 00 44 00 44 44 48 00 48 44 00 48 00 00 48 48 48 48 48 00 44 48 00 48 48 00 00 48 48 00 00 44 44 00 48 44 48 48 00 00 00 00 48 48 48 44 00 48 00 48 48 00 48 00 00 48 00 44 48 44 00 00 44 00 44 48 00 48 00 48 48 48 00 44 00 00 44 00 48 00 00 00 00 48 00 48 44 00 48 00 48 00 44 00 48 44 44 44 44 48 44 44 44 00 00 44 44 00 44 00 00 48 44 48 00 48 00 00 48 00 44 44 44 44 48 00 48 00 00 44 44 00 44 48 44 44 44 48 44 00 00 44 00 48 00 00 00 48 48 48 48 44 00 48 00 48 00 48 48 44 00 48 48 00 44 48 44 44 44 44 44 48 48 48 00 00 48 00 00 00 48 48 00 44 48 00 48 00 00 00 00 48 44 48 00 00 00 00 48 00 48 44 00 44 00 48 00 48 48 00 00 00 00 48 00 44 00 44 44 00 44 00 48 00 48 44 44 00 48 48 44 44 48 00 48 00 44 48 00 48 00 00 48 44 48 44 00 00 00 48 44 00 48 00 00 48 00 44 00 00 44 00 48 48 00 44 48 44 48 00 48 48 44 48 48 48 48 00 00 00 44 44 00 00 48 00 48 00 44 00 48 44 44 00 44 48 44 00 00 00 00 00 48 48 00 00 44 48 00 00 44 44 48 48 48 00 48 44 48 00 48 00 44 44 48 44 44 00 00 48 48 44 00 00 48 00 44 44 48 48 44 48 48 00 48 44 44 48 00 48 00 44 44 48 44 48 48 00 44 00 48 00 48 00 48 44 48 00 00 44 00 48 44 44 00 44 44 44 44 00 00 48 44 00 48 44 48 48 48 00 00 44 00 48 00 48 48 44 00 00 48 44 48 48 00 00 48 44 00 00 00 00 44 00 00 44 44 44 48 00 48 00 48 00 48 44 48 48 00 44 44 00 00 00 44 44 00 00 44 44 00 48 44 00 44 48 00 44 44 48 48 44 00 48 00 44 44 44 44 00 48 44 48 00 48 00 00 44 00 48 00 44 00 44 00 44 48 48 48 48 00 48 48 00 48 00 48 48 44 00 44 48 00 00 44 00 48 48 48 00 48 48 00 00 48 00 00 48 44 44 00 48 00 00 00 48 48 00 00 48 00 00 48 44 00 48 00 00 00 44 48 48 00 00 00 48 44 00 48 00 00 44 48 48 48 00 44 44 48 48 48 44 48 48 00 44 48 48 44 44 00 44 48 44 00 44 44 48 44 00 44 48 00 48 48 00 00 44 44 48 00 48 44 00 44 00 44 48 00 44 00 48 44 00 48 00 00 44 44 44 00 00 00 00 48 48 44 00 44 48 44 44 00 00 48 00 48 48 44 44 48 00 00 48 00 00 48 00 00 00 00 00 44 48 48 00 00 48 00 00 44 48 44 44 48 44 00 00 44 48 44 48 48 00 00 48 00 00 48 00 00 48 00 44 48 48 44 00 44 44 44 44 48 00 48 00 48 00 44 00 48 44 48 44 48 44 00 44 48 48 00 48 00 44 00 44 00 44 44 00 48 44 44 00 44 48 00 44 00 00 00 44 00 48 44 48 48 00 48 48 48 00 48 48 44 00 44 00 44 44 00 48 00 00 48 00 44 44 48 44 44 00 44 00 48 00 44 00 44 00 00 00 00 00 00 00 00 00 48 00 00 48 44 44 44 48 44 44 48 00 44 00 48 44 48 48 48 44 48 48 44 00 00 00 00 48 00 44 44 00 44 44 48 48 44 00 00 48 00 48 48 00 48 00 44 48 00 00 48 48 44 00 48 00 00 48 00 44 00 00 44 48 00 44 48 00 44 48 00 44 00 00 44 48 00 48 48 44 48 00 44 48 44 48 00 00 48 44 48 44 48 00 00 44 44 00 00 44 00 00 00 48 48 44 48 00 44 48 44 00 00 44 48 44 00 48 00 00 44 48 48 00 48 00 44 44 48 48 44 00 00 00 44 48 44 00 44 44 00 00 44 48 00 00 48 00 48 44 48 00 00 44 48 44 00 00 00 00 48 48 00 44 44 00
*/
