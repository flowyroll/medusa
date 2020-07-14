.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
lea addresses_WC_ht+0x6cb7, %rbx
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r15
movq %r15, (%rbx)
nop
add $16253, %rbx
lea addresses_WC_ht+0x5f77, %rdx
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
xor $6614, %r15
lea addresses_WT_ht+0xc37, %rbx
nop
and %r9, %r9
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
dec %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0xc12b900000009f7, %r12
nop
xor %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
cmp $7769, %r11

// Store
lea addresses_WC+0x8b77, %rcx
nop
add $39938, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_UC+0x48f7, %rcx
nop
nop
cmp $36805, %rdi
movb $0x51, (%rcx)
cmp %r9, %r9

// Store
mov $0xa1b, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
cmp $26610, %rsi

// Store
mov $0xb77, %rax
sub %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rax)
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_WC+0x8b77, %rcx
inc %rax
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 61}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
