.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xdf4b, %r9
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%r9)
add $60374, %r8
lea addresses_D_ht+0x1b503, %rsi
nop
nop
nop
nop
cmp $5182, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rsi)
nop
nop
xor $46653, %r10
lea addresses_WC_ht+0xc103, %r14
nop
nop
nop
cmp $25492, %r11
mov (%r14), %esi
nop
nop
nop
and $4166, %rsi
lea addresses_A_ht+0x978c, %r14
clflush (%r14)
nop
nop
nop
nop
xor $24849, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r14)
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x8103, %rsi
lea addresses_WC_ht+0x5d03, %rdi
nop
nop
nop
nop
nop
xor $49102, %r11
mov $116, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x3c83, %rcx
nop
nop
nop
nop
xor $64721, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xc282, %rsi
nop
nop
nop
nop
nop
and $11842, %r10
mov (%rsi), %r8d
nop
nop
nop
and $43584, %r8
lea addresses_normal_ht+0x95c3, %rcx
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x157bb, %r10
nop
nop
sub $63075, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r10
vmovntdq %ymm1, (%r10)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x1eba3, %rsi
lea addresses_WC_ht+0x1aa43, %rdi
nop
nop
nop
nop
nop
cmp $50712, %r12
mov $88, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x7103, %rsi
lea addresses_A_ht+0x2f03, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r14, %r14
mov $54, %rcx
rep movsl
nop
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0xf903, %r13
add $21075, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r13)
xor %rbx, %rbx

// Store
lea addresses_PSE+0xa903, %rbx
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rbx)
cmp %rsi, %rsi

// Load
lea addresses_WT+0x8703, %r8
nop
nop
nop
nop
and %r10, %r10
movb (%r8), %r13b
nop
sub $41350, %r10

// Store
lea addresses_A+0x3103, %rax
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%rax)
cmp $27833, %r10

// Store
lea addresses_WT+0x12f03, %rsi
nop
nop
nop
and $333, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
dec %r10

// Store
lea addresses_A+0x30bb, %rbp
add $32586, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movups %xmm1, (%rbp)
nop
nop
nop
nop
xor $25961, %rbx

// Faulty Load
mov $0x903, %rsi
nop
nop
nop
nop
and $35943, %r10
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'00': 182}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
