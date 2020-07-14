.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x21aa, %rcx
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
nop
add $29351, %rdi
lea addresses_A_ht+0x348a, %rsi
lea addresses_WT_ht+0x7faa, %rdi
nop
nop
nop
nop
and $27614, %rax
mov $9, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x8919, %rax
nop
nop
nop
add %r11, %r11
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x139e2, %r10
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%r10)
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x3ec6, %rsi
lea addresses_normal_ht+0xe9aa, %rdi
nop
nop
nop
nop
sub $38794, %r15
mov $120, %rcx
rep movsl
nop
nop
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0xb47a, %r11
nop
nop
nop
nop
nop
sub $52314, %rax
movw $0x5152, (%r11)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_RW+0x9daa, %r11
nop
inc %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
dec %rdi

// Store
lea addresses_normal+0x1bbaa, %r11
nop
xor %rbx, %rbx
movl $0x51525354, (%r11)
and %r15, %r15

// Store
lea addresses_PSE+0x165aa, %r11
nop
xor $33811, %rax
movl $0x51525354, (%r11)
nop
nop
cmp %r11, %r11

// Store
lea addresses_RW+0x18aa, %r15
nop
nop
nop
nop
add $58398, %r14
movw $0x5152, (%r15)
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0x8fda, %rdx
nop
nop
nop
nop
nop
and $31624, %rdi
movb $0x51, (%rdx)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
nop
xor $47305, %rax

// Store
lea addresses_PSE+0x165aa, %r11
nop
nop
cmp $50451, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x165aa, %r14
nop
sub %rax, %rax
mov (%r14), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'58': 5}
58 58 58 58 58
*/
