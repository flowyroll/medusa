.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rdi
lea addresses_normal_ht+0x189b4, %r9
nop
nop
nop
nop
nop
xor $8800, %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0xd360, %r15
and %r13, %r13
movl $0x61626364, (%r15)
nop
sub $25369, %r8
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x16ebe, %rsi
lea addresses_D+0xeb28, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $95, %rcx
rep movsl
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_A+0x18688, %r11
clflush (%r11)
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
cmp $39105, %rsi

// Load
lea addresses_WT+0x4928, %rsi
nop
add $19483, %r14
mov (%rsi), %ecx
nop
nop
xor $16515, %rbx

// Store
lea addresses_WC+0xf028, %r11
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
add $57523, %rdi

// Store
lea addresses_UC+0x17148, %rdi
nop
nop
nop
nop
dec %r11
movb $0x51, (%rdi)
nop
nop
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_normal+0x1ac28, %rcx
clflush (%rcx)
nop
nop
nop
and $35726, %rdi
mov (%rcx), %si
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
