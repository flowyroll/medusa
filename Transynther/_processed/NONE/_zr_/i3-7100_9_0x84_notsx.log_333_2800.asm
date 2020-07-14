.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rsi
lea addresses_WC_ht+0x14da5, %rbp
nop
cmp %r10, %r10
movb (%rbp), %al
nop
nop
nop
nop
nop
and $17613, %rsi
pop %rsi
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rcx

// Store
mov $0xd25, %rcx
nop
add %r12, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $2692, %r10

// Store
lea addresses_WT+0x93a5, %r11
nop
nop
nop
xor $17872, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
xor $51712, %r11

// Store
lea addresses_D+0xe6a5, %r10
clflush (%r10)
nop
nop
nop
nop
nop
add $54514, %r9
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x13725, %r11
nop
and %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%r11)
nop
nop
and %rcx, %rcx

// Load
lea addresses_WC+0x1f7f1, %r9
nop
nop
nop
nop
inc %r15
movups (%r9), %xmm2
vpextrq $0, %xmm2, %r10
nop
sub $63654, %rcx

// Store
mov $0x8364a0000000d25, %r15
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)

// Exception!!!
nop
nop
mov (0), %rbx
nop
add $11304, %r12

// Faulty Load
lea addresses_A+0x181a5, %rbx
nop
nop
nop
nop
cmp $52336, %rcx
mov (%rbx), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 333}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
