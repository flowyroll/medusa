.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
lea addresses_normal_ht+0x1dc60, %r9
nop
nop
sub %r11, %r11
mov (%r9), %edx
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x13700, %r8
nop
nop
nop
nop
add $7342, %r15
movw $0x6162, (%r8)
and $54005, %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rdx
push %rsi

// Store
lea addresses_US+0x16468, %rsi
and %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movaps %xmm0, (%rsi)
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x19f34, %r12
nop
nop
nop
nop
add $13681, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
cmp $31682, %rsi

// Store
lea addresses_PSE+0x7180, %rsi
nop
nop
nop
nop
sub $2110, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $44651, %r12

// Faulty Load
lea addresses_UC+0x1d400, %rsi
nop
and %r14, %r14
vmovntdqa (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 23}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
