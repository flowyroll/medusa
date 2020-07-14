.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8325, %rsi
lea addresses_WT_ht+0x12125, %rdi
and $37777, %r12
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0x4f47, %rbp
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rbp), %rdi
nop
dec %rax
lea addresses_A_ht+0x16305, %rsi
lea addresses_D_ht+0x8d25, %rdi
nop
xor %r11, %r11
mov $47, %rcx
rep movsb
nop
nop
cmp $35153, %r11
lea addresses_UC_ht+0x7325, %rsi
lea addresses_normal_ht+0x190fd, %rdi
nop
cmp $25199, %rbp
mov $39, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x4d65, %rbx
nop
nop
nop
nop
and %rbp, %rbp
movl $0x61626364, (%rbx)
add %rbx, %rbx
lea addresses_WC_ht+0x1889d, %rdi
nop
cmp %rbp, %rbp
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r12
nop
and $59646, %rdi
lea addresses_WC_ht+0x17125, %rcx
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xc239, %rsi
dec %rcx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0xa983, %rsi
lea addresses_A_ht+0x63e5, %rdi
add $31803, %rbx
mov $72, %rcx
rep movsw
dec %r12
lea addresses_WT_ht+0x1b915, %rsi
lea addresses_WT_ht+0xc245, %rdi
nop
cmp %r11, %r11
mov $6, %rcx
rep movsq
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xdae5, %rsi
lea addresses_D_ht+0xad65, %rdi
sub $23321, %r11
mov $36, %rcx
rep movsl
dec %rax
lea addresses_D_ht+0x162a5, %rsi
lea addresses_WC_ht+0x123a1, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r12
mov $47, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x167c5, %rsi
lea addresses_A_ht+0xbd25, %rdi
xor %rax, %rax
mov $55, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xddd5, %rsi
nop
nop
nop
nop
nop
add $38628, %rbx
mov (%rsi), %rdi
nop
and $27993, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rdi

// Load
lea addresses_A+0x1c325, %r10
nop
nop
nop
nop
sub $33362, %r15
mov (%r10), %r9
nop
nop
nop
nop
inc %r10

// Store
lea addresses_WT+0x10f9d, %r10
nop
nop
nop
nop
and $7237, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r10)

// Exception!!!
nop
nop
mov (0), %r9
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
mov $0x21e2e30000000b25, %r13
nop
nop
nop
cmp $36742, %r15
mov $0x5152535455565758, %r14
movq %r14, (%r13)
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x1c325, %r10
nop
nop
nop
nop
nop
and $6852, %rdi
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'46': 257, '45': 5389, '49': 96, '00': 9826, '48': 6261}
00 48 48 48 48 45 00 45 00 48 48 48 48 45 00 00 00 45 48 48 45 00 48 48 48 48 45 00 45 00 48 48 45 00 45 00 48 48 48 48 46 45 45 00 48 48 45 00 45 00 45 00 45 00 00 00 00 48 00 48 45 00 45 00 48 00 48 48 45 00 00 00 00 00 48 48 00 00 00 00 00 00 45 00 45 00 00 48 45 00 00 48 48 48 48 48 48 48 00 00 48 00 45 00 45 00 00 46 48 00 48 45 00 00 00 00 48 45 00 45 00 45 00 45 00 45 00 48 00 00 45 00 45 00 45 00 48 48 00 00 45 45 00 00 00 00 00 48 45 00 45 00 48 48 48 48 00 00 48 45 00 45 00 48 00 00 45 48 45 45 00 45 00 45 00 48 48 00 00 00 00 00 48 00 45 00 45 00 00 46 00 00 00 45 45 00 45 45 00 48 45 00 48 48 48 48 00 00 45 00 00 00 48 45 00 45 00 00 48 45 00 00 48 48 48 48 48 45 00 45 00 48 48 00 45 00 00 00 45 48 45 00 45 00 00 48 48 48 48 48 48 48 48 45 00 45 00 00 48 48 45 00 00 00 00 48 48 45 00 45 00 45 00 45 00 48 48 48 00 00 48 48 48 45 00 48 46 00 00 00 00 48 48 48 48 48 48 48 00 00 48 48 00 45 00 00 48 45 00 48 00 00 45 45 48 48 45 00 45 00 00 48 48 48 49 00 48 48 45 00 45 00 48 48 48 48 46 00 00 00 00 00 48 48 48 48 48 00 48 48 45 00 00 00 00 00 48 45 00 00 48 48 45 00 45 00 45 00 48 48 48 48 00 45 00 48 48 00 45 00 00 00 00 45 00 00 48 48 48 48 48 48 00 00 00 45 00 45 00 00 48 48 48 48 00 45 00 45 00 45 00 45 00 48 48 00 00 45 00 45 00 00 00 45 00 48 48 45 00 00 00 48 48 48 48 48 48 48 45 00 45 00 45 00 48 48 48 45 00 00 00 45 45 00 48 45 00 00 48 48 48 48 48 48 00 45 00 45 00 45 00 48 48 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 48 48 45 00 45 00 45 00 45 00 48 48 48 48 00 00 48 48 45 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 48 45 00 48 00 48 48 00 00 46 48 46 00 00 00 00 48 48 48 48 48 00 00 45 00 45 00 48 48 00 00 00 00 45 00 00 48 45 00 45 00 45 00 48 48 48 48 48 00 45 00 48 00 45 00 00 00 48 45 00 48 48 45 00 45 00 48 48 48 48 48 00 45 45 00 48 45 00 45 00 00 00 48 45 48 45 00 45 00 45 00 45 00 48 48 45 00 00 48 00 00 48 45 00 45 00 48 48 48 00 46 00 48 00 48 45 45 45 00 48 48 48 48 48 48 48 45 00 45 00 45 00 45 00 00 48 00 00 00 00 00 48 48 48 45 00 48 48 48 48 00 45 00 45 00 45 00 00 00 00 00 00 45 45 45 45 48 48 45 00 45 00 45 00 45 00 48 00 00 45 00 00 00 45 00 00 48 45 00 45 00 00 00 48 48 48 48 48 48 48 00 00 00 45 00 45 00 00 45 00 48 48 48 48 48 45 00 48 48 48 48 00 45 00 45 00 45 00 00 00 00 00 45 00 48 48 48 48 45 00 45 00 00 48 45 00 48 48 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 48 45 00 45 00 45 00 48 00 00 00 48 48 48 45 00 45 00 00 00 00 48 48 48 48 45 00 48 48 00 48 45 00 48 48 45 00 48 45 00 45 00 48 48 48 48 46 45 45 45 48 48 45 00 45 00 48 48 48 48 00 00 45 00 45 45 00 00 48 46 00 00 00 48 48 48 48 48 48 48 00 00 48 48 48 45 00 00 48 45 00 48 00 00 00 00 45 45 00 48 45 00 45 00 00 48 00 00 48 48 45 00 45 00 45 00 45 00 45 00 00 48 45 00 45 00 48 48 00 00 00 00 45 00 48 00 45 00 45 00 45 00 45 00 00 48 00 48 48 00 45 00 48 45 00 45 00 45 00 48 48 45 49 00 48 48 48 48 48 45 00 00 00 00 45 45 45 48 48 00 45 00 48 48 48 48 48 48 00 00 48 48 48 48 45 48 00 00 45 00 45 00 45 00 45 00 48 48 00 00 45 00 45 00 45
*/
