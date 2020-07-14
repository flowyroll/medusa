.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbx
push %rdx
push %rsi
lea addresses_A_ht+0x10bc5, %r10
clflush (%r10)
nop
nop
xor $17448, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rbx
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x5e75, %rax
sub $56987, %rsi
movl $0x51525354, (%rax)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r12
nop
nop
nop
inc %r8

// Load
lea addresses_WT+0x7b55, %rax
nop
nop
nop
nop
cmp %r10, %r10
movb (%rax), %r12b
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_US+0x1fca5, %r11
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
and %r11, %r11

// Store
mov $0x7c597c00000008a5, %r12
nop
nop
nop
nop
sub $48753, %r8
movb $0x51, (%r12)
nop
nop
nop
nop
and %rdx, %rdx

// Store
mov $0x6775780000000ea5, %r11
nop
add $32760, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r11)
nop
sub %r12, %r12

// Store
mov $0x7c597c00000008a5, %r11
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%r11)
xor $55906, %r11

// Store
mov $0x6d4b2a0000000d25, %r10
nop
nop
nop
dec %rdx
movb $0x51, (%r10)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_UC+0x15145, %r11
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r11)
xor $53468, %r12

// Load
mov $0x4fb69f000000038d, %r12
nop
nop
nop
cmp %rdx, %rdx
movb (%r12), %r8b
nop
inc %r10

// Faulty Load
mov $0x7c597c00000008a5, %r8
nop
nop
nop
and %r12, %r12
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 235}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
