.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x96ea, %rsi
lea addresses_UC_ht+0x106aa, %rdi
nop
and %rbx, %rbx
mov $31, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $35620, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x176f6, %rsi
nop
nop
nop
nop
and $10459, %rdi
movw $0x5152, (%rsi)
nop
sub %rax, %rax

// Store
lea addresses_normal+0x86aa, %r8
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_normal+0x86aa, %rdi
nop
cmp %r15, %r15
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'58': 172}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
