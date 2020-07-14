.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e670, %rsi
lea addresses_WT_ht+0x670, %rdi
nop
nop
nop
inc %r8
mov $35, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xb770, %r12
nop
nop
nop
nop
add $44623, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %r12
movntdq %xmm1, (%r12)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x18670, %rsi
nop
nop
add $27825, %r12
mov (%rsi), %ecx
cmp %rbp, %rbp
lea addresses_normal_ht+0x1ce70, %rcx
clflush (%rcx)
add %r10, %r10
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r12
cmp $3057, %r12
lea addresses_WT_ht+0xc99e, %r10
nop
nop
nop
nop
xor $61022, %r12
mov (%r10), %r8
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x21f0, %rsi
clflush (%rsi)
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
and $31159, %rdi
lea addresses_UC_ht+0x17a70, %rdi
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
add $7872, %rsi
lea addresses_WC_ht+0x3470, %rsi
lea addresses_UC_ht+0x12bf0, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $42634, %rdx
mov $68, %rcx
rep movsb
and $30723, %rdx
lea addresses_WT_ht+0x5670, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $36369, %rdx
mov (%r12), %ebp
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xf0b0, %r8
nop
nop
nop
sub $55079, %r12
movups (%r8), %xmm6
vpextrq $0, %xmm6, %rdi
nop
and %rcx, %rcx
lea addresses_UC_ht+0xce70, %rsi
lea addresses_WT_ht+0x16a68, %rdi
cmp %rdx, %rdx
mov $121, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xb970, %r10
cmp $60352, %rbp
movb $0x61, (%r10)
nop
add $56804, %rcx
lea addresses_normal_ht+0xfef8, %rcx
nop
sub $9456, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
add $4058, %rbp
lea addresses_A_ht+0x19470, %rbp
xor $4220, %r8
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbx

// Load
lea addresses_US+0x19c18, %r12
cmp %rbx, %rbx
mov (%r12), %rax
nop
nop
cmp $32381, %r10

// Store
mov $0x582d260000000cf0, %r14
nop
nop
nop
nop
cmp $45023, %r15
movl $0x51525354, (%r14)
cmp %r15, %r15

// Store
lea addresses_D+0x18c70, %r11
nop
nop
nop
nop
and %rbx, %rbx
movl $0x51525354, (%r11)
nop
sub $32308, %r11

// Store
lea addresses_WT+0x13e70, %r15
nop
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
nop
xor $55241, %r12

// Store
lea addresses_A+0xbe70, %r12
nop
nop
nop
and $20119, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
sub $46374, %rax

// Faulty Load
lea addresses_UC+0x5e70, %r15
and $5982, %r11
movups (%r15), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
