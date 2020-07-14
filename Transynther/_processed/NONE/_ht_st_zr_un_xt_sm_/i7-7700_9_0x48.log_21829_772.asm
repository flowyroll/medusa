.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_D_ht+0x16a19, %rdi
nop
nop
nop
nop
nop
inc %r11
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
nop
sub %rbx, %rbx
lea addresses_D_ht+0x91c9, %rbp
cmp %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%rbp)
nop
nop
nop
cmp $55513, %r13
lea addresses_UC_ht+0x13d9, %r13
nop
nop
nop
cmp $53648, %rbp
mov (%r13), %di
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x8fd9, %rbx
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
nop
nop
cmp $29645, %r13
lea addresses_A_ht+0x11d19, %r11
nop
and $54797, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r11)
xor $21975, %r13
lea addresses_WC_ht+0x18199, %rdx
nop
nop
cmp $25990, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x4219, %rbx
nop
nop
nop
nop
nop
xor $22821, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
and $17757, %rdi
lea addresses_D_ht+0x9219, %rdi
nop
nop
nop
nop
nop
inc %r12
movw $0x6162, (%rdi)
and $5243, %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1fa19, %r12
nop
and %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%r12)

// Exception!!!
nop
nop
mov (0), %r8
and %r11, %r11

// Store
mov $0x49a2ba0000000599, %rcx
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_UC+0x1fa19, %r12
clflush (%r12)
nop
nop
nop
nop
sub %r10, %r10
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'ae': 1, 'cc': 1, '12': 236, '8c': 1, 'c5': 1118, 'b9': 1, '35': 2, 'd3': 1, '72': 2, '82': 1, 'a0': 2, '6b': 3, '40': 1366, '70': 906, 'fa': 29, '25': 1, '6e': 1, '8f': 1206, 'dd': 14, '62': 1, '51': 60, '02': 1, 'ad': 1, 'ec': 1, 'a3': 1, 'e8': 1, 'bd': 1, '1e': 1, 'a9': 1, '99': 39, 'd1': 1, 'e6': 1, '43': 1, '97': 79, 'fb': 2, '5d': 1, 'ca': 28, '73': 1, 'a2': 37, '80': 1, 'd7': 168, 'd6': 6347, '52': 1, '3b': 1, '00': 6007, '05': 11, 'c6': 1, 'c1': 27, '98': 1, '26': 1, '9c': 74, '5e': 1, 'b1': 40, '90': 134, 'ff': 3550, '2c': 1, 'b2': 155, '49': 1, 'c4': 156}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d6 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 c5 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 70 d6 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 c5 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff d6 c5 ff ff 00 ff 00 ff 00 ff ff ff 00 ff ff ff 00 ff 00 ff 00 ff ff ff ff ff ff ff 00 ff 00 ff 00 ff ff 00 ff ff 00 ff 00 ff 00 ff ff 00
*/
