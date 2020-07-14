.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x17b79, %r14
and $48681, %r10
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x5059, %rsi
lea addresses_normal_ht+0x142c9, %rdi
nop
cmp %r10, %r10
mov $35, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xd7e9, %rsi
lea addresses_D_ht+0x10b81, %rdi
nop
nop
inc %r10
mov $4, %rcx
rep movsq
nop
nop
and $39531, %r12
lea addresses_normal_ht+0xffe1, %rdi
clflush (%rdi)
cmp %rsi, %rsi
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1d8c1, %rcx
nop
cmp %r10, %r10
movw $0x6162, (%rcx)
add $46541, %rdi
lea addresses_WC_ht+0x7d59, %rsi
lea addresses_WC_ht+0xbad9, %rdi
nop
nop
nop
and $42446, %rbx
mov $99, %rcx
rep movsq
nop
nop
nop
inc %r12
lea addresses_A_ht+0x18334, %rbx
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xcc59, %rsi
lea addresses_WT_ht+0x11759, %rdi
clflush (%rdi)
sub %r12, %r12
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x2459, %r10
cmp %r14, %r14
movb (%r10), %bl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x15439, %r11
clflush (%r11)
xor %rbx, %rbx
mov (%r11), %r10w
nop
sub $23187, %r11
lea addresses_D_ht+0x1eac1, %rsi
nop
sub $5756, %r12
movw $0x6162, (%rsi)
nop
nop
inc %rdi
lea addresses_A_ht+0x169cd, %rdi
nop
nop
nop
nop
xor $5138, %r12
movw $0x6162, (%rdi)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x14459, %r14
nop
nop
nop
nop
nop
sub $28833, %rdi
mov (%r14), %bx
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x13459, %rbx
nop
add %r12, %r12
movb (%rbx), %cl
nop
nop
sub $9652, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdx

// Store
lea addresses_WT+0x11e87, %rbp
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovntdq %ymm0, (%rbp)
cmp $45905, %r10

// Store
mov $0x19a7a90000000459, %r15
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
xor $51229, %r11

// Faulty Load
lea addresses_WT+0xc59, %r15
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'49': 14813, '00': 77, '48': 6939}
49 49 49 49 49 49 49 48 49 48 49 48 49 48 48 49 49 49 48 49 48 48 49 49 49 49 49 49 49 49 49 48 48 48 48 48 49 48 49 48 49 49 49 49 48 49 49 48 49 49 48 49 49 49 49 48 49 49 49 49 48 49 49 49 48 49 48 49 49 48 48 49 49 48 49 49 48 49 48 49 49 49 49 48 49 48 49 48 49 49 49 48 49 49 49 48 48 48 49 48 49 49 48 49 49 49 49 49 49 48 49 48 48 49 49 49 49 48 49 48 48 49 49 48 49 49 49 49 48 49 49 49 48 49 49 48 49 48 48 48 49 49 49 48 48 48 49 49 49 49 49 49 48 49 49 48 48 48 49 49 49 49 49 49 49 48 48 48 49 48 49 49 49 48 49 48 48 49 49 48 49 48 48 49 49 49 49 48 48 48 48 49 48 49 49 48 49 49 49 49 49 49 48 49 49 49 49 48 49 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 49 49 48 49 49 48 49 48 49 49 49 48 48 49 49 48 49 49 48 49 49 49 49 49 48 49 49 49 49 49 48 48 48 49 49 49 49 48 49 49 49 48 49 48 48 48 49 49 49 49 49 49 49 48 48 49 48 49 49 48 49 48 49 49 49 49 48 49 49 49 49 48 49 49 48 48 49 49 49 48 49 49 49 48 48 49 49 49 49 49 49 49 48 48 49 49 49 49 48 48 49 49 49 49 49 49 49 49 49 48 48 48 49 48 49 48 49 48 49 48 49 49 49 49 49 49 48 48 49 49 49 48 49 49 49 49 49 49 48 49 48 49 48 48 48 49 49 48 49 48 49 49 48 48 49 49 49 49 49 48 49 48 49 48 49 49 49 48 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 48 48 48 49 48 49 49 49 49 49 49 49 48 48 49 49 49 49 49 48 49 49 49 49 49 49 49 48 49 49 48 49 49 48 48 49 49 49 49 48 49 48 48 48 49 49 49 49 49 49 49 49 48 49 48 49 49 49 48 49 49 49 48 48 48 49 48 49 48 49 49 00 49 49 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 49 48 49 49 48 48 49 49 49 48 49 48 49 49 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 49 48 48 48 49 48 49 49 48 48 49 49 49 49 48 49 48 49 48 48 49 49 48 49 49 48 49 49 48 49 49 49 48 49 48 49 48 49 49 49 48 48 49 49 49 49 48 49 48 49 49 48 49 48 49 49 48 49 48 49 49 49 49 48 49 48 49 48 49 49 49 49 49 49 49 49 49 48 49 48 49 48 49 48 49 49 49 49 48 49 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 48 48 49 49 48 49 48 49 49 49 49 48 49 49 48 49 49 49 48 48 49 49 49 49 49 49 49 49 49 48 49 49 48 48 49 49 49 48 49 49 48 49 49 48 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 48 49 48 49 48 49 49 49 48 48 48 49 49 49 48 48 48 48 49 49 48 49 48 49 49 49 49 49 49 49 48 49 49 48 49 48 49 49 48 48 48 49 49 48 49 49 48 49 49 48 48 49 49 49 49 49 49 49 48 49 49 49 48 49 49 49 48 49 49 49 48 49 48 49 49 49 49 49 48 49 49 48 49 49 49 48 48 49 49 48 49 48 49 48 49 49 49 49 48 49 48 49 48 49 49 49 48 49 48 49 49 48 49 48 49 49 49 49 49 49 49 49 48 49 48 49 49 49 49 49 48 48 48 49 48 49 49 48 48 49 48 48 49 49 49 49 48 49 49 48 48 49 48 49 49 48 49 49 48 48 49 49 49 49 49 49 49 48 49 48 49 48 49 49 48 48 49 49 49 48 48 49 48 49 48 49 48 49 49 49 48 49 49 49 48 48 48 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 48 49 49 49 49 49 49 48 48 48 49 48 48 48 49 48 49 49 48 48 49 49 49 48 49 49 48 49 49 48 49 48 48 49 49 48 48 49 49 49 48 49 48 48 49 49 48 49 48 49 48 49 48 48 49 48 49 49 49 48 49 49 49 49 49 48
*/
