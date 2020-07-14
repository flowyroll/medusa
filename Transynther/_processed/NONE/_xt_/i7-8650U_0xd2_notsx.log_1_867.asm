.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c1a6, %r15
lfence
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r15)
nop
sub %r14, %r14
lea addresses_D_ht+0x2626, %rsi
lea addresses_normal_ht+0xe5a6, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $42, %rcx
rep movsb
nop
nop
nop
nop
and $26601, %r14
lea addresses_UC_ht+0x86c, %r15
inc %r14
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and $21349, %rbx
lea addresses_A_ht+0xada6, %rbx
nop
nop
nop
xor %r12, %r12
movb (%rbx), %cl
xor %r14, %r14
lea addresses_WC_ht+0x15626, %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbx), %di
nop
xor %rcx, %rcx
lea addresses_A_ht+0x5626, %rcx
nop
nop
nop
add $27525, %r12
mov (%rcx), %esi
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x84ec, %r12
nop
dec %rsi
mov (%r12), %ebx
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_WT+0x1b790, %r11
nop
nop
nop
add %r12, %r12
movb $0x51, (%r11)
nop
nop
nop
sub $20940, %r9

// Store
mov $0x70cc8000000008a6, %rsi
nop
nop
nop
nop
cmp $14234, %r13
movw $0x5152, (%rsi)
nop
sub %r12, %r12

// Store
lea addresses_A+0x5ea6, %r8
cmp %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_RW+0xe5a6, %r9
nop
add %rbx, %rbx
mov (%r9), %r11d
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 1}
32
*/
