.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11f3e, %rbp
cmp $31854, %r8
movb $0x61, (%rbp)
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x7648, %rbp
nop
nop
xor %r13, %r13
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
mfence
lea addresses_UC_ht+0x1e09e, %rbp
clflush (%rbp)
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rbp)
nop
xor %r12, %r12
lea addresses_normal_ht+0x2dbe, %r9
nop
nop
nop
nop
nop
xor %r11, %r11
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x1e873, %r9
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
sub $35692, %rax
lea addresses_WC_ht+0x14e, %rsi
lea addresses_WC_ht+0x1b33e, %rdi
nop
nop
nop
nop
xor $27227, %r8
mov $31, %rcx
rep movsq
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x1cdbe, %r8
xor $4896, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%r8)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0x11d3e, %r12
clflush (%r12)
nop
nop
nop
cmp $63715, %rdi
movb $0x51, (%r12)
nop
nop
sub %r12, %r12

// Store
lea addresses_D+0xa33e, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdi)
nop
inc %rsi

// Faulty Load
lea addresses_US+0x19b3e, %rsi
nop
nop
and $36049, %rdi
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'00': 3, '48': 6}
00 48 48 48 00 48 48 00 48
*/
