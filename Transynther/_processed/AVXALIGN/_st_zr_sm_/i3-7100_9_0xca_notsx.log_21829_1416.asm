.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi
lea addresses_D_ht+0x165ec, %r15
and %rsi, %rsi
movb (%r15), %dl
nop
cmp %r15, %r15
lea addresses_normal_ht+0x15ec, %rcx
nop
nop
add $37880, %r15
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x195ec, %r9
nop
nop
nop
nop
nop
xor $53949, %r10
mov (%r9), %r11w
nop
nop
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x13484, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_PSE+0xe4ac, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $63661, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rcx)
nop
and %rsi, %rsi

// REPMOV
lea addresses_WC+0x4f97, %rsi
lea addresses_WC+0x1240c, %rdi
nop
nop
nop
inc %r13
mov $124, %rcx
rep movsb
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x16fec, %rcx
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
cmp $32822, %rdx

// Store
lea addresses_WT+0x1ecec, %r13
nop
nop
nop
nop
nop
cmp $39704, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
sub $2304, %rdi

// Store
mov $0xd4c, %rdx
nop
xor $33480, %rdi
movw $0x5152, (%rdx)
add $11743, %r10

// Store
lea addresses_WC+0x60b4, %rbx
xor $41322, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovntdq %ymm5, (%rbx)
nop
nop
nop
nop
nop
add $46168, %rsi

// Store
mov $0x5b2a8700000007ec, %r10
nop
and %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r10)
add $46969, %rdi

// Store
lea addresses_RW+0x1367e, %r10
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
nop
xor $54404, %rdi

// Store
lea addresses_WC+0x4f2c, %r10
nop
nop
nop
nop
nop
dec %r13
movw $0x5152, (%r10)
and $5303, %rdx

// Faulty Load
mov $0x5b2a8700000007ec, %r13
nop
nop
nop
and $28387, %rdi
mov (%r13), %bx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 16996, '00': 4833}
58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 00 00 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 00 58 00 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 00 00 58 00 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 58 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 00 00 00 58 58 58 58 00 00 58 58 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 00 00 58 58 58 00 58 58 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 00 58 00 00 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 00 58 00 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 00 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 00 00 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 00 58 58 00 58 58 00 00 58 58 58 00 58 00 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 00 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 00 00 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 58
*/
