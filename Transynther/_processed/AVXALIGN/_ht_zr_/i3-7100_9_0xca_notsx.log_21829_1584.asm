.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x128b4, %rsi
lea addresses_WC_ht+0x1d444, %rdi
nop
nop
xor %r11, %r11
mov $73, %rcx
rep movsl
nop
nop
and $43389, %rcx
lea addresses_D_ht+0xba44, %rsi
lea addresses_normal_ht+0x1ac44, %rdi
nop
nop
nop
sub $34721, %rbp
mov $60, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xfa9c, %rsi
lea addresses_normal_ht+0x1f44, %rdi
nop
nop
nop
cmp %r8, %r8
mov $61, %rcx
rep movsb
nop
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x125a4, %rsi
lea addresses_A+0x173e4, %rdi
nop
nop
nop
nop
add %rbp, %rbp
mov $100, %rcx
rep movsb
cmp %r9, %r9

// Store
lea addresses_UC+0x1430, %rsi
nop
nop
and $1957, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_D+0x6ec6, %rsi
nop
nop
nop
and %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x6c6b55000000030c, %r15
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
sub $3483, %rsi

// Store
lea addresses_WT+0xee44, %rcx
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
and $334, %rdi

// Store
lea addresses_WC+0x66ec, %rbp
nop
nop
xor $10552, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rbp)
cmp %rcx, %rcx

// Faulty Load
mov $0x244, %r15
nop
nop
nop
cmp %rdi, %rdi
vmovntdqa (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'00': 5802, '44': 66, '46': 2888, '48': 13073}
46 48 48 48 00 00 00 46 48 00 48 00 48 46 00 46 00 48 48 00 46 00 00 48 00 44 48 46 44 00 48 00 46 48 00 48 00 48 00 46 46 00 48 00 46 00 48 48 00 44 48 48 00 00 00 44 46 48 00 48 44 46 48 00 48 46 00 00 00 46 48 00 46 48 00 46 00 48 46 00 00 44 46 46 00 48 00 48 00 00 46 00 46 48 46 00 46 00 48 00 00 46 00 48 46 48 00 00 00 00 00 00 00 46 48 00 44 48 48 48 48 00 00 46 48 48 48 48 48 48 48 48 00 00 48 48 46 48 46 00 48 00 00 48 48 48 48 00 00 00 48 46 48 48 48 48 48 48 48 46 48 46 46 48 48 48 00 00 48 00 48 48 00 48 46 00 00 48 48 48 48 00 46 00 48 00 48 48 00 48 46 00 48 48 46 46 48 48 00 00 00 48 46 46 46 00 00 48 00 48 48 48 46 48 46 46 00 48 00 48 48 00 48 46 48 00 46 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 46 48 00 48 00 00 48 00 48 00 48 00 48 00 00 48 48 48 48 48 48 48 48 00 46 00 48 48 48 00 00 00 48 48 48 48 00 48 48 48 48 48 00 46 46 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 46 00 48 48 48 00 00 46 48 00 48 46 46 46 48 48 00 00 00 48 48 46 00 48 00 48 48 48 00 48 46 46 48 48 48 00 48 00 00 48 46 48 48 48 46 00 48 48 46 48 00 48 48 48 48 00 46 48 46 48 00 48 46 00 48 48 48 00 48 48 48 48 00 48 46 48 48 48 46 00 46 00 48 00 48 00 48 00 00 48 00 48 48 48 48 00 00 00 00 48 00 46 00 48 48 00 48 48 00 48 48 46 48 00 48 48 48 48 00 46 46 48 00 48 00 00 00 48 48 48 46 00 00 00 48 00 46 48 00 00 48 48 00 48 48 48 46 00 00 48 48 48 46 48 00 00 00 48 00 46 00 46 00 48 48 48 00 00 00 46 48 00 48 48 48 00 48 48 48 46 48 48 46 46 48 00 48 48 00 48 48 00 48 48 46 48 48 46 48 46 46 48 48 48 00 48 00 48 00 46 00 48 46 48 48 48 48 46 48 46 48 46 48 48 00 00 00 48 48 48 48 48 00 00 48 00 48 46 48 48 48 00 48 48 46 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 46 48 48 48 48 48 48 00 00 48 00 48 48 00 48 00 48 48 00 48 48 48 00 00 46 00 00 00 00 00 48 00 48 48 48 48 46 46 48 48 48 48 48 00 00 00 48 48 00 48 48 48 48 48 00 48 48 48 46 00 46 48 48 48 00 00 48 48 48 48 00 00 00 48 00 00 48 00 00 00 46 48 46 48 48 00 00 46 48 48 00 48 46 48 46 00 00 48 48 48 48 48 48 48 46 48 00 48 00 46 48 48 48 00 48 00 48 48 48 48 48 48 46 48 48 48 48 46 48 48 48 48 48 00 00 48 48 00 48 48 44 48 48 00 48 46 46 00 48 00 48 00 48 48 48 00 48 46 48 00 48 48 46 48 48 00 48 48 00 00 00 00 48 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 46 48 48 48 48 46 00 48 48 48 48 48 46 48 00 00 48 46 46 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 46 00 00 48 48 48 48 48 48 00 48 48 00 46 48 48 48 48 46 48 48 46 48 00 48 00 00 00 00 48 00 48 00 48 46 48 48 48 48 46 48 46 48 48 48 00 48 00 00 00 48 48 00 48 48 48 48 48 48 48 48 46 00 48 00 48 48 48 48 48 46 48 00 48 48 48 46 00 48 00 00 48 48 48 48 00 00 48 46 00 48 48 48 48 48 48 48 46 46 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 46 46 00 48 48 46 00 00 46 00 46 00 46 48 00 48 48 48 48 48 48 46 48 00 00 48 48 46 48 48 00 00 48 48 48 48 48 48 48 48 48 48 46 48 48 00 48 48 48 00 48 48
*/
