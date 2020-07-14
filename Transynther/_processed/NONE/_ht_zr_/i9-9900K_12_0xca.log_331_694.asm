.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb99c, %rdi
nop
nop
cmp $24999, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0xe1ec, %rsi
lea addresses_WC_ht+0x4c9c, %rdi
nop
nop
nop
nop
xor $56267, %r8
mov $83, %rcx
rep movsl
nop
nop
nop
dec %r12
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_A+0xc59c, %r9
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
dec %r9

// Store
lea addresses_US+0x64cc, %r11
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
nop
and $36449, %rdi

// Load
lea addresses_UC+0x1785c, %rax
clflush (%rax)
nop
sub $64752, %rcx
mov (%rax), %r12
nop
nop
nop
and $4412, %r11

// Store
mov $0x773ec0000000095c, %r12
nop
xor $22564, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
xor $12375, %r12

// Store
lea addresses_A+0x1829c, %r12
nop
nop
nop
nop
and $27696, %r11
movw $0x5152, (%r12)
xor $12370, %rdi

// Store
mov $0x2c52d4000000089c, %r9
nop
nop
add $1093, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
sub $22052, %rdi

// Store
lea addresses_D+0xbbcc, %r11
nop
nop
nop
nop
xor $61606, %r9
movb $0x51, (%r11)
nop
nop
nop
xor $6339, %r11

// Faulty Load
lea addresses_A+0xa99c, %r15
nop
nop
nop
nop
xor $54109, %rdi
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'00': 329, '48': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
