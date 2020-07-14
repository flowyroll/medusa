.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6102, %rbp
nop
nop
xor $24748, %rdi
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
sub $36554, %rbx
lea addresses_WT_ht+0x10e02, %rsi
lea addresses_UC_ht+0x1b7a2, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x19a0a, %rsi
nop
nop
nop
and %rax, %rax
movb (%rsi), %bl
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x62b0, %rbp
nop
nop
nop
add $34841, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %rbp
vmovaps %ymm5, (%rbp)
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x1b2ba, %rdx
nop
xor %rsi, %rsi
movb (%rdx), %cl
nop
xor $6287, %rdi
lea addresses_D_ht+0xf522, %rbx
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rbx)
sub %rdi, %rdi
lea addresses_A_ht+0xf77e, %rax
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rax
vmovaps %ymm4, (%rax)
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x12202, %rbx
nop
nop
nop
nop
nop
sub $48767, %rax
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub $25065, %rbp
lea addresses_D_ht+0xcd2c, %rdi
xor %rbx, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xc197, %rbx
nop
nop
cmp $32171, %rdi
movw $0x6162, (%rbx)
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rdx

// Store
mov $0x3ef43c0000000482, %r9
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
nop
nop
nop
nop
and $36659, %r13

// Store
lea addresses_UC+0x19d02, %rdx
nop
nop
cmp $20544, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_RW+0xb102, %rbp
nop
nop
nop
nop
nop
inc %r15
mov (%rbp), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'32': 409}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
