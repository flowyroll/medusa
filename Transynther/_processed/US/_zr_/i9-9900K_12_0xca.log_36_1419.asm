.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5564, %rsi
lea addresses_WC_ht+0x12764, %rdi
nop
inc %rbx
mov $27, %rcx
rep movsb
nop
nop
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0xfac4, %r14
nop
nop
nop
cmp $24307, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_WT+0x3ac4, %rax
clflush (%rax)
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rax)
nop
sub $18177, %rbx

// Store
lea addresses_WT+0x137c0, %r10
nop
nop
nop
xor $34283, %rdi
movl $0x51525354, (%r10)
nop
nop
dec %r10

// Store
lea addresses_D+0x15184, %r8
nop
nop
nop
dec %rax
movw $0x5152, (%r8)
nop
nop
nop
sub $51893, %rdi

// Store
lea addresses_D+0x1eec4, %r14
nop
nop
nop
add $35127, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r14)
xor $27669, %rax

// Faulty Load
lea addresses_US+0xe2c4, %r10
sub $56290, %rax
movups (%r10), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
