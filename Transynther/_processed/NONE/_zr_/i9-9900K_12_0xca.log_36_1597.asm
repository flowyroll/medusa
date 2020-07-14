.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x243c, %rdi
nop
nop
nop
nop
nop
cmp $59989, %rbx
movl $0x61626364, (%rdi)
inc %r14
lea addresses_WT_ht+0x1d9a8, %r13
add %rsi, %rsi
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %r8
nop
sub %r13, %r13
lea addresses_WC_ht+0x1409c, %r14
nop
dec %r15
mov (%r14), %rdi
nop
nop
nop
xor $12257, %r15
lea addresses_WT_ht+0x1983c, %rdi
cmp $43004, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
xor $38441, %rsi
lea addresses_UC_ht+0x19c5c, %rsi
lea addresses_A_ht+0xb83c, %rdi
nop
nop
nop
dec %r15
mov $39, %rcx
rep movsl
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x1b9bc, %r15
dec %rcx
movw $0x6162, (%r15)
nop
nop
add $5359, %r15
lea addresses_normal_ht+0x623c, %rsi
lea addresses_WC_ht+0x10bac, %rdi
clflush (%rsi)
cmp $12293, %r14
mov $111, %rcx
rep movsl
nop
mfence
lea addresses_A_ht+0x1892a, %rsi
nop
sub %r8, %r8
movl $0x61626364, (%rsi)
nop
sub %r14, %r14
lea addresses_UC_ht+0x1983c, %rsi
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0xf8bc, %r15
clflush (%r15)
nop
add $34670, %rcx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
xor $38317, %rdi
lea addresses_normal_ht+0xfc3c, %r8
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_US+0x3a1e, %r13
clflush (%r13)
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r13)
inc %r13

// Store
lea addresses_A+0x235c, %rbp
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
dec %rbp

// Store
mov $0xf8c, %rbp
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovaps %ymm3, (%rbp)
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_normal+0x1283c, %rax
nop
nop
nop
nop
sub $24342, %rbp
movw $0x5152, (%rax)
sub %r13, %r13

// Store
lea addresses_A+0xb43c, %r9
nop
nop
nop
and $27031, %r11
movl $0x51525354, (%r9)
nop
nop
xor $52417, %r11

// Faulty Load
lea addresses_A+0x703c, %r13
nop
nop
nop
nop
add %rax, %rax
movups (%r13), %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
