.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4a4c, %rsi
lea addresses_UC_ht+0x61e2, %rdi
nop
nop
nop
xor %r11, %r11
mov $1, %rcx
rep movsb
nop
nop
sub $43015, %r9
lea addresses_A_ht+0x8362, %r14
nop
nop
nop
nop
cmp %r11, %r11
mov (%r14), %rsi
nop
nop
nop
nop
nop
sub $10104, %r14
lea addresses_WT_ht+0x91de, %rsi
nop
nop
xor $20928, %r15
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xa262, %rcx
sub $64341, %rdi
mov (%rcx), %r15w
and $53119, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_WT+0xdd42, %rsi
nop
nop
inc %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovaps %ymm1, (%rsi)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_PSE+0xba22, %rsi
clflush (%rsi)
nop
nop
nop
sub $44865, %r14
movb $0x51, (%rsi)
nop
nop
xor $50818, %r14

// Store
lea addresses_D+0x173e2, %r14
nop
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r14)
nop
nop
sub %r8, %r8

// Load
lea addresses_D+0x9ab2, %r14
xor %r8, %r8
mov (%r14), %si
nop
nop
dec %r13

// Store
mov $0xf94, %r13
nop
nop
nop
nop
nop
sub $38885, %r15
movb $0x51, (%r13)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x54a2, %r8
nop
nop
sub %r14, %r14
movb $0x51, (%r8)
inc %r14

// Store
mov $0x109e820000000822, %r8
nop
nop
nop
add %rax, %rax
movb $0x51, (%r8)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x1fea2, %r13
nop
nop
nop
sub $64969, %rax
mov (%r13), %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 1}
34
*/
