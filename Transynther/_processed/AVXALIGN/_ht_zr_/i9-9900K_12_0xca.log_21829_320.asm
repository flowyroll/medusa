.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1eda1, %rbx
nop
nop
nop
add $49346, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xdfc1, %r15
nop
sub %r14, %r14
movb $0x61, (%r15)
nop
nop
nop
nop
cmp $35519, %rbx
lea addresses_UC_ht+0xccc1, %rdx
nop
nop
sub $10532, %r13
movl $0x61626364, (%rdx)
nop
and $29712, %rbx
lea addresses_D_ht+0x4701, %r10
nop
nop
nop
add %rdx, %rdx
mov (%r10), %r14w
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x1c701, %rsi
lea addresses_D_ht+0x12fd1, %rdi
nop
nop
sub $31988, %r15
mov $44, %rcx
rep movsw
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x70a1, %rsi
lea addresses_normal_ht+0xdb01, %rdi
nop
nop
nop
nop
xor $33784, %r13
mov $64, %rcx
rep movsl
nop
nop
nop
xor $62436, %rdx
lea addresses_D_ht+0x18207, %r13
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x12ec1, %r11
sub %rdx, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $101, %r13
lea addresses_D_ht+0x1e2c1, %rsi
lea addresses_WC_ht+0x1a521, %rdi
clflush (%rsi)
nop
nop
nop
and $58930, %r10
mov $105, %rcx
rep movsq
nop
and $20169, %r10
lea addresses_A_ht+0x169c1, %rsi
lea addresses_normal_ht+0x7bd5, %rdi
nop
sub %r15, %r15
mov $80, %rcx
rep movsl
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x143c1, %r15
nop
nop
nop
nop
nop
and $40578, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
dec %rdx
lea addresses_A_ht+0x158d3, %r11
nop
nop
and $40614, %rdx
mov (%r11), %rbx
nop
nop
nop
nop
xor $16427, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Load
mov $0x7b3f60000000fc1, %r8
nop
nop
dec %rbx
mov (%r8), %ecx

// Exception!!!
mov (0), %rbx
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_UC+0x197c1, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
vmovaps (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'40': 8, '45': 15139, '00': 209, '46': 6468, '47': 5}
46 46 46 46 45 45 45 46 45 45 45 45 45 45 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 46 46 46 45 45 45 46 46 45 45 46 45 45 46 45 45 45 46 46 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 46 46 45 45 45 46 46 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 46 46 45 45 45 46 45 45 46 46 45 45 45 45 45 45 45 45 45 46 46 46 46 46 45 46 45 45 46 46 45 45 45 46 45 45 45 45 45 46 45 45 46 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 46 45 45 46 45 45 45 45 45 46 46 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 46 45 46 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 45 45 45 46 46 45 45 46 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 46 45 45 45 45 46 45 45 45 45 46 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 00 45 45 46 45 45 46 45 45 45 45 45 46 45 45 45 46 45 45 45 45 46 45 45 45 46 45 45 45 46 46 45 45 46 46 45 45 45 46 45 45 45 46 46 46 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 46 46 45 45 46 46 45 45 46 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 46 46 46 45 46 45 45 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 45 45 45 46 46 45 45 46 46 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 46 45 45 45 00 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 46 46 45 45 45 45 45 45 46 45 45 45 46 45 45 46 45 45 46 45 45 45 45 46 45 45 45 45 46 46 46 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 46 46 45 45 46 46 46 46 46 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 46 45 45 45 45 00 45 45 46 45 45 45 46 00 45 45 45 45 45 45 45 45 45 45 46 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 46 45 45 45 45 45 46 46 46 46 45 45 46 46 45 46 46 45 45 46 46 45 45 45 46 46 45 45 45 45 46 45 45 46 46 46 45 45 45 46 45 45 46 46 45 45 45 45 45 46 45 45 46 45 45 45 45 45 46 46 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 45 46 46 46 45 45 45 45 45 45 45 46 46 46 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 46 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 46 45 46 46 45 45 45 45 46 46 45 45 45 46 45 45 45 46 46 45 45 45 46 46 45 45 45 46 45 45 45 46 46 45 45 46 45 45 45 45 46 45 45 46 46 45 45 45 45 45 46 46 46 46 45 45 45 45 45 45 45 45 45 46 45 45 46 46 00 45 45 46 46 45 45 00 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 46 46 45 46 46 45 45 45 45 00 45 46 45 45 46 45 46 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 46 45
*/
