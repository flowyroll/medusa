.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xadd7, %rsi
lea addresses_UC_ht+0x107af, %rdi
clflush (%rdi)
nop
nop
nop
add $33084, %rdx
mov $58, %rcx
rep movsw
nop
nop
nop
nop
xor $49816, %r15
lea addresses_UC_ht+0x16137, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rdx), %r15d
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x14ed7, %rsi
nop
nop
add $9850, %rdi
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
xor $8318, %rdx
lea addresses_UC_ht+0x19d37, %rsi
lea addresses_WT_ht+0x1ad37, %rdi
nop
dec %r15
mov $122, %rcx
rep movsl
nop
nop
nop
sub $17675, %rdi
lea addresses_WC_ht+0x4e37, %rcx
nop
nop
nop
nop
nop
and $15627, %rbp
mov (%rcx), %r15w
nop
nop
nop
nop
and $62947, %rdx
lea addresses_A_ht+0xfd37, %r15
cmp %rbp, %rbp
movw $0x6162, (%r15)
nop
mfence
lea addresses_UC_ht+0x9337, %rsi
lea addresses_UC_ht+0xcd7, %rdi
nop
sub $54285, %r15
mov $119, %rcx
rep movsq
nop
nop
dec %r15
lea addresses_WC_ht+0x19e87, %rdi
nop
sub %r11, %r11
mov (%rdi), %rcx
nop
sub $46784, %rdi
lea addresses_D_ht+0x1b847, %rdx
nop
nop
add %rsi, %rsi
movb (%rdx), %cl
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_normal+0xc497, %r8
nop
nop
xor %r15, %r15
movw $0x5152, (%r8)
nop
add $33255, %r9

// Load
lea addresses_WT+0x1eb37, %r13
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%r13), %r11w
nop
add $54777, %r8

// Store
lea addresses_normal+0x2937, %r8
clflush (%r8)
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
and $3006, %r9

// Store
lea addresses_PSE+0x3137, %rsi
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
sub $64068, %r13

// Store
lea addresses_WT+0x1f4b7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $24422, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movaps %xmm6, (%rdi)
nop
nop
sub %r13, %r13

// Store
lea addresses_UC+0x10d37, %r13
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
xor $61183, %r11

// Store
lea addresses_D+0xc99f, %r8
nop
sub $62730, %r9
movw $0x5152, (%r8)
nop
nop
add %r9, %r9

// Load
mov $0x1606c60000000ca1, %r8
nop
nop
nop
nop
nop
xor $35655, %r11
mov (%r8), %r15
nop
nop
nop
nop
cmp $58202, %r13

// Store
lea addresses_D+0xeb7, %r11
nop
nop
and $54472, %r9
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_D+0x18d37, %r9
nop
nop
nop
xor %rdi, %rdi
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 38}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
