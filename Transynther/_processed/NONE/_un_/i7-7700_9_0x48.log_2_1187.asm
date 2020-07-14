.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xf8d7, %r14
nop
nop
xor $58920, %r9
mov (%r14), %ebx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xe447, %rsi
lea addresses_normal_ht+0x1acd7, %rdi
nop
nop
nop
add $49878, %r13
mov $18, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x17517, %rsi
lea addresses_D_ht+0x8fd7, %rdi
nop
xor %r9, %r9
mov $98, %rcx
rep movsw
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xed7, %rdi
clflush (%rdi)
nop
add $13727, %r8
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
cmp $9251, %r8

// Store
lea addresses_US+0x17b57, %rdx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
sub $15958, %rdx

// Store
lea addresses_WT+0x1fcd7, %rdx
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
cmp $38195, %rdx

// Load
lea addresses_D+0x16ad7, %r9
nop
and $22496, %rbx
mov (%r9), %r12
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x27d7, %r8
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%r8)
xor %rdx, %rdx

// Store
lea addresses_D+0x142d7, %r12
clflush (%r12)
sub %r14, %r14
movl $0x51525354, (%r12)
nop
and %r9, %r9

// Store
mov $0x6580b40000000ab7, %r9
nop
nop
xor $3319, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movaps %xmm5, (%r9)
nop
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_WT+0x1fcd7, %r14
nop
nop
nop
and %rbx, %rbx
mov (%r14), %rdx
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_WT+0x1fcd7, %r9
nop
nop
cmp $28143, %r8
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'1b': 2}
1b 1b
*/
