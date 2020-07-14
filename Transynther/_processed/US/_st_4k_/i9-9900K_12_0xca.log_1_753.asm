.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x8dd3, %rax
nop
nop
nop
xor $6834, %rbp
mov (%rax), %r10
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x2da8, %r14
nop
nop
add %rbp, %rbp
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xe408, %rsi
lea addresses_WT_ht+0x4d10, %rdi
nop
nop
nop
inc %rax
mov $44, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbx
push %rdi

// Store
lea addresses_WT+0x3fc8, %r15
nop
xor $53849, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%r15)
nop
xor %r15, %r15

// Store
lea addresses_D+0x4408, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
sub %r11, %r11

// Store
lea addresses_WT+0xbe08, %r9
nop
nop
nop
add $32355, %r14
movb $0x51, (%r9)
nop
nop
sub $42219, %rbx

// Store
lea addresses_WT+0x3908, %rbx
nop
nop
and %r10, %r10
movw $0x5152, (%rbx)
and $16608, %r11

// Load
lea addresses_US+0x408, %r15
nop
nop
dec %r14
mov (%r15), %r11
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x14d4, %r15
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r15)
nop
nop
cmp $63062, %r9

// Load
lea addresses_US+0x1ec08, %r11
nop
nop
nop
nop
xor %r14, %r14
movb (%r11), %r9b
nop
cmp %rdi, %rdi

// Store
lea addresses_UC+0x19c08, %r11
nop
nop
nop
nop
nop
sub $1914, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r11)
xor %r10, %r10

// Store
lea addresses_D+0xd08, %rdi
nop
nop
dec %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and $42683, %rdi

// Faulty Load
lea addresses_US+0x408, %rbx
nop
nop
nop
nop
xor %r9, %r9
mov (%rbx), %r14w
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'58': 1}
58
*/
