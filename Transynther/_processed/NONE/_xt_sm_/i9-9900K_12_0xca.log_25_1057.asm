.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x33e1, %rsi
lea addresses_normal_ht+0x15a1d, %rdi
nop
nop
nop
dec %r10
mov $4, %rcx
rep movsb
and %r11, %r11
lea addresses_D_ht+0x75bb, %r14
nop
nop
nop
nop
nop
xor $63130, %rax
mov (%r14), %cx
nop
nop
nop
nop
and $17335, %r11
lea addresses_D_ht+0x171f1, %r10
nop
xor %r14, %r14
movb (%r10), %r11b
nop
nop
nop
nop
add $8121, %rcx
lea addresses_D_ht+0x17421, %r10
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r10)
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx

// Store
lea addresses_A+0x9ab, %rcx
and $11888, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_A+0x5a21, %r13
inc %r10
movb $0x51, (%r13)
cmp %r15, %r15

// Store
lea addresses_WT+0x16621, %rax
clflush (%rax)
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rax)
nop
sub $33425, %r15

// Store
lea addresses_D+0xbb51, %r12
nop
cmp $47356, %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r12)
nop
cmp $62162, %r10

// Faulty Load
lea addresses_A+0x5a21, %r12
nop
xor $24348, %rcx
movb (%r12), %r10b
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'51': 25}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
