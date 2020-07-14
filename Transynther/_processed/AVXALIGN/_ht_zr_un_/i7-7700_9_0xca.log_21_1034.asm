.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdd01, %r14
nop
nop
inc %rcx
mov (%r14), %r10d
add %rcx, %rcx
lea addresses_WT_ht+0xe641, %rsi
lea addresses_WC_ht+0x56eb, %rdi
and %r9, %r9
mov $112, %rcx
rep movsq
nop
and $34745, %rsi
lea addresses_WC_ht+0x1cec1, %r14
clflush (%r14)
nop
xor $13990, %rax
mov (%r14), %r10w
nop
nop
xor $40201, %rdi
lea addresses_WT_ht+0x1cd49, %rsi
lea addresses_WT_ht+0x122e9, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $8, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x275f, %r10
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r10
movaps %xmm1, (%r10)
dec %rcx
lea addresses_normal_ht+0x1d041, %rcx
nop
nop
nop
sub %r9, %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x15069, %rsi
lea addresses_WT_ht+0x16391, %rdi
nop
nop
nop
nop
inc %r9
mov $42, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1c641, %rcx
xor %r9, %r9
mov (%rcx), %ax
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp

// Store
lea addresses_A+0x1d241, %r12
nop
nop
nop
nop
nop
add $56975, %rbp
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
cmp $62783, %rbp

// Store
lea addresses_UC+0xfa41, %r8
cmp %r15, %r15
movb $0x51, (%r8)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0x76f9, %r8
add %r11, %r11
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
sub $1539, %r11

// Load
lea addresses_WC+0x19611, %r11
sub %r8, %r8
mov (%r11), %r10d
nop
nop
nop
nop
add $27225, %r8

// Load
lea addresses_A+0x1d241, %r8
and %r12, %r12
movb (%r8), %r11b
nop
sub %r11, %r11

// Load
lea addresses_PSE+0x15101, %r10
nop
nop
nop
nop
sub %r11, %r11
mov (%r10), %rbp
nop
nop
nop
nop
inc %r9

// Store
mov $0x4abb260000000a41, %r12
nop
dec %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r12)
inc %r10

// Faulty Load
lea addresses_A+0x1d241, %r12
nop
nop
nop
xor $5043, %r8
vmovaps (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'49': 2, '00': 17, '08': 2}
00 00 00 00 00 00 00 49 00 49 00 08 00 00 08 00 00 00 00 00 00
*/
