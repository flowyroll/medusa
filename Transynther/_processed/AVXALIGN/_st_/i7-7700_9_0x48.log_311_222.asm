.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x678d, %rdx
nop
nop
nop
nop
nop
dec %rbp
movb (%rdx), %r15b
nop
nop
nop
nop
add $28229, %rdi
lea addresses_WC_ht+0x1ab4d, %r14
sub %rdx, %rdx
movb (%r14), %r11b
nop
cmp $28309, %r14
lea addresses_UC_ht+0x5ced, %r15
nop
nop
cmp $65150, %r11
mov (%r15), %edx
xor %rdi, %rdi
lea addresses_A_ht+0x1876d, %rdi
nop
nop
nop
nop
xor %r12, %r12
movb $0x61, (%rdi)
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x314d, %r14
cmp $43819, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
and $0xffffffffffffffc0, %r14
movaps %xmm4, (%r14)
nop
dec %rdx
lea addresses_WT_ht+0x1126d, %rsi
lea addresses_D_ht+0xa7cd, %rdi
nop
nop
nop
and %rdx, %rdx
mov $7, %rcx
rep movsq
nop
nop
add $62409, %rcx
lea addresses_D_ht+0xc14d, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r14), %r15w
nop
nop
and $16217, %r11
lea addresses_A_ht+0x1174d, %r11
nop
nop
nop
and $6636, %rcx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x14f4d, %rsi
lea addresses_D_ht+0x1ace9, %rdi
nop
sub $27430, %r15
mov $117, %rcx
rep movsq
nop
nop
nop
xor $2516, %r14
lea addresses_WC_ht+0x1fbd, %rcx
sub %r15, %r15
mov (%rcx), %bp
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1ec4d, %rsi
lea addresses_A_ht+0x849d, %rdi
nop
nop
dec %rdx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x191bd, %rdx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xf54d, %rdx
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x594d, %rsi
lea addresses_WT_ht+0xc04d, %rdi
nop
nop
nop
nop
sub $16504, %r12
mov $43, %rcx
rep movsw
cmp $31419, %r14
lea addresses_WC_ht+0x1174d, %rcx
nop
cmp $58773, %rsi
mov (%rcx), %r14d
nop
nop
nop
nop
nop
and $44859, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x18a71, %rbx
nop
nop
nop
nop
cmp $15221, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
and $59, %rbx

// Faulty Load
lea addresses_PSE+0x14f4d, %r11
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%r11), %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': False}}
{'33': 311}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
