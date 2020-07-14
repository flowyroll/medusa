.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x3413, %rdx
xor %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x2673, %rsi
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
sub $19531, %rdi

// Store
lea addresses_PSE+0x1427, %rbx
clflush (%rbx)
cmp $29850, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%rbx)
nop
nop
nop
nop
and %r11, %r11

// REPMOV
lea addresses_PSE+0x1c13, %rsi
lea addresses_A+0x1d013, %rdi
nop
nop
dec %r11
mov $54, %rcx
rep movsl
sub $56947, %rcx

// Store
lea addresses_A+0x4013, %rsi
sub $3967, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rsi)
nop
nop
cmp $26158, %rcx

// Store
mov $0x3fec250000000a13, %rcx
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rcx)
cmp %r15, %r15

// Store
lea addresses_WT+0x18dff, %r11
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movaps %xmm6, (%r11)
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_UC+0x1b57b, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
sub $49222, %rdi

// Store
lea addresses_WC+0xd373, %rdi
clflush (%rdi)
nop
xor $14288, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub $60634, %rsi

// Load
lea addresses_normal+0x3413, %r9
and %rcx, %rcx
mov (%r9), %si
nop
dec %rdi

// Faulty Load
lea addresses_normal+0x3413, %r11
nop
nop
nop
cmp %r15, %r15
movntdqa (%r11), %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 65}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
