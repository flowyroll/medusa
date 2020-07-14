.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2e6, %rbp
nop
nop
cmp $44397, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
cmp $3100, %r12
lea addresses_D_ht+0x6c01, %rsi
lea addresses_normal_ht+0x2b32, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $101, %rcx
rep movsq
nop
nop
and %r12, %r12
lea addresses_D_ht+0x117d1, %rbp
nop
nop
nop
xor $61164, %r11
mov (%rbp), %edi
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0xbb41, %r12
nop
nop
nop
add $21423, %r15
movw $0x6162, (%r12)
nop
and $36879, %rcx
lea addresses_D_ht+0x126ad, %r15
nop
nop
nop
cmp %r12, %r12
mov (%r15), %rdi
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1a7d1, %rsi
lea addresses_UC_ht+0x1841, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $72, %rcx
rep movsq
nop
nop
nop
sub $48100, %r15
lea addresses_WC_ht+0x12141, %r11
nop
cmp %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
xor $30210, %rbx
lea addresses_normal_ht+0x127c1, %r15
dec %r11
mov (%r15), %rdi
nop
nop
nop
xor $62606, %r11
lea addresses_WC_ht+0x1986d, %rdi
nop
nop
sub $10351, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xa9c1, %r15
dec %r12
movw $0x6162, (%r15)
nop
nop
nop
xor $60020, %r15
lea addresses_A_ht+0x1cb41, %rsi
lea addresses_normal_ht+0x1a4ad, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
sub %r12, %r12
mov $73, %rcx
rep movsw
sub %rbx, %rbx
lea addresses_UC_ht+0x441, %rcx
nop
nop
add $29473, %r15
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x136c1, %rsi
lea addresses_A_ht+0x1ec1, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $20543, %rbx
mov $23, %rcx
rep movsb
nop
sub $24665, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rdi
push %rdx

// Faulty Load
lea addresses_D+0x17ec1, %r11
nop
nop
nop
inc %r15
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'36': 159}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
