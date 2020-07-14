.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1197d, %r13
clflush (%r13)
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r13)
nop
nop
xor $10795, %rbp
lea addresses_A_ht+0x167d, %r13
nop
sub $6583, %rsi
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1607d, %rsi
nop
nop
dec %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
xor %rsi, %rsi
lea addresses_WC_ht+0x7e4b, %rsi
nop
nop
nop
sub $15188, %r15
movl $0x61626364, (%rsi)
nop
and %rax, %rax
lea addresses_A_ht+0x555d, %rsi
lea addresses_WT_ht+0x117fd, %rdi
nop
and %rbp, %rbp
mov $109, %rcx
rep movsq
nop
add $30342, %r13
lea addresses_WC_ht+0x95fd, %rcx
nop
nop
nop
cmp $6223, %rbp
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x17f7d, %rsi
nop
nop
and $32884, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
add $36033, %rdi
lea addresses_D_ht+0xd9fd, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rdi)
nop
cmp $18334, %r15
lea addresses_WT_ht+0x11a7d, %rsi
lea addresses_A_ht+0x1107f, %rdi
nop
nop
nop
and $32257, %r15
mov $60, %rcx
rep movsl
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0xba85, %rbx
nop
nop
nop
add $38857, %r14
movb $0x51, (%rbx)
inc %r14

// Store
lea addresses_A+0xcffd, %r14
nop
dec %rbp
movw $0x5152, (%r14)
nop
nop
nop
add $42700, %r12

// Store
lea addresses_RW+0xfb08, %r14
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r14)
nop
nop
cmp $5612, %rbx

// Store
lea addresses_WC+0xbbbd, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub $16727, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbp)
inc %rbp

// Faulty Load
mov $0x11955f00000001fd, %r14
and %r12, %r12
vmovntdqa (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'45': 17206, '48': 47, '00': 4575, 'f7': 1}
00 45 f7 00 45 00 45 00 45 45 00 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 00 45 45 00 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 00
*/
