.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rdi
lea addresses_UC_ht+0x16a6a, %r9
nop
nop
nop
nop
and %r15, %r15
movups (%r9), %xmm0
vpextrq $1, %xmm0, %r11
nop
cmp %r9, %r9
lea addresses_WC_ht+0xfc86, %rdi
nop
nop
nop
nop
xor %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
nop
cmp %r8, %r8
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rsi

// Load
lea addresses_A+0x425a, %r15
nop
nop
nop
nop
inc %r9
mov (%r15), %ebp
nop
nop
lfence

// Store
lea addresses_normal+0x29aa, %r14
nop
nop
add $38093, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
add $63847, %r15

// Store
mov $0x86a, %r15
nop
xor $55550, %r14
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
xor $48052, %rax

// Faulty Load
lea addresses_WT+0x15a6a, %rsi
clflush (%rsi)
sub $39147, %rbx
mov (%rsi), %eax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'39': 28}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
