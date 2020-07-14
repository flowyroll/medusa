.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rdx
lea addresses_UC_ht+0x18061, %r8
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x13839, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $26012, %r14
movb $0x61, (%rdi)
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0xf355, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r13, %r13
movb (%rdi), %al
inc %r13
lea addresses_UC_ht+0x11485, %r13
and $12383, %rdx
movb (%r13), %r8b
nop
nop
nop
nop
xor $13550, %r14
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_US+0x5dc1, %rbp
nop
xor %r15, %r15
movb $0x51, (%rbp)
nop
sub %r15, %r15

// Store
mov $0x1ad, %rdx
cmp $13253, %r13
movw $0x5152, (%rdx)
nop
sub $49038, %rbp

// Load
lea addresses_UC+0x16be7, %rdx
nop
nop
nop
xor $54409, %rbp
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
and %rbp, %rbp

// Load
lea addresses_PSE+0x15541, %r13
nop
nop
nop
xor %rax, %rax
mov (%r13), %rdx
nop
nop
nop
nop
nop
and $38082, %r9

// Store
lea addresses_D+0x17941, %r8
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_WT+0xc141, %r9
nop
nop
nop
nop
and $62160, %rdx
mov (%r9), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 2}
00 00
*/
