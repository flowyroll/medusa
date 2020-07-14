.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd406, %rbp
nop
add $5679, %rax
mov (%rbp), %ebx
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x15a7e, %rax
nop
nop
nop
nop
nop
cmp $18049, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1b286, %r15
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%r15)
and %rax, %rax
lea addresses_normal_ht+0x1157b, %rbx
nop
add %r8, %r8
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x53a5, %rsi
lea addresses_D_ht+0x11406, %rdi
nop
nop
nop
nop
nop
and $18664, %r10
mov $81, %rcx
rep movsq
xor %rax, %rax
lea addresses_A_ht+0x9946, %r10
nop
nop
sub $7771, %r15
mov (%r10), %ebp
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xf4f1, %rbp
and %rax, %rax
mov (%rbp), %r10w
nop
and $59922, %r8
lea addresses_WT_ht+0x9c06, %rdi
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
and $45526, %r15
lea addresses_A_ht+0x18c06, %rdi
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rdi)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xd786, %rbx
nop
nop
nop
nop
inc %rdi
mov (%rbx), %esi
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x14406, %rsi
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
and %rbx, %rbx

// Load
lea addresses_normal+0x13f06, %rax
nop
nop
sub %rsi, %rsi
mov (%rax), %r11d
nop
nop
cmp $63079, %r13

// Store
lea addresses_normal+0x14406, %rdi
nop
nop
nop
nop
nop
sub $13488, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
nop
add $24819, %r13

// Load
lea addresses_PSE+0x1719e, %r11
nop
nop
nop
and %rsi, %rsi
mov (%r11), %r13d
nop
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x2c06, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_D+0xb196, %rcx
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0x1f906, %rsi
nop
sub %r13, %r13
movw $0x5152, (%rsi)
nop
nop
cmp %r13, %r13

// Store
lea addresses_UC+0x4106, %rax
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rax)
nop
nop
and $47172, %rax

// Faulty Load
lea addresses_normal+0x14406, %r11
nop
nop
nop
add %rax, %rax
vmovntdqa (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
