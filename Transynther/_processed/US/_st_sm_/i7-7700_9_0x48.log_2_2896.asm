.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x7338, %r11
nop
nop
nop
nop
nop
and %rbp, %rbp
movb (%r11), %bl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x17010, %rsi
nop
nop
nop
nop
and $63249, %r10
movb (%rsi), %r13b
nop
nop
nop
nop
nop
sub $55437, %r10
lea addresses_WC_ht+0x14b10, %r11
nop
nop
nop
xor $29355, %rbx
mov (%r11), %r13w
and $37307, %r13
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x80e8, %rbp
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbp)

// Exception!!!
nop
mov (0), %rbp
nop
nop
cmp $56532, %r10

// Store
lea addresses_WT+0xbec8, %r11
cmp $60362, %rbp
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_US+0xff10, %r9
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
and %r11, %r11

// Store
lea addresses_UC+0x16870, %rdx
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rdx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
nop
nop
dec %rbp

// Load
mov $0x710, %r11
nop
nop
cmp %r10, %r10
mov (%r11), %dx
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0xff10, %r9
nop
sub $9003, %rbp
mov (%r9), %ecx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'58': 2}
58 58
*/
