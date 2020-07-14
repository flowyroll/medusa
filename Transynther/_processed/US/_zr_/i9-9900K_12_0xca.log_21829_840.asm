.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbaef, %rsi
nop
nop
cmp $41146, %r15
mov (%rsi), %r10w
nop
nop
nop
nop
nop
cmp $31632, %r11
lea addresses_WT_ht+0x4aef, %rsi
lea addresses_WT_ht+0x1daef, %rdi
nop
xor $53990, %rbx
mov $32, %rcx
rep movsq
nop
add %rcx, %rcx
lea addresses_normal_ht+0x53ef, %rsi
nop
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0xd1ef, %rsi
lea addresses_WC_ht+0x72ef, %rdi
clflush (%rsi)
nop
nop
and %r9, %r9
mov $97, %rcx
rep movsw
add %rsi, %rsi
lea addresses_WC_ht+0x86ef, %rsi
lea addresses_A_ht+0x1278f, %rdi
cmp %r9, %r9
mov $118, %rcx
rep movsq
nop
nop
nop
sub $207, %r11
lea addresses_WC_ht+0xd96f, %rdi
nop
xor %r15, %r15
mov (%rdi), %bx
nop
cmp $49781, %rsi
lea addresses_A_ht+0x1ea6f, %rcx
nop
nop
nop
xor $51503, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor $444, %rdi
lea addresses_A_ht+0xeaef, %r10
nop
nop
add $40612, %rcx
movb (%r10), %bl
nop
nop
xor $49135, %rdi
lea addresses_WT_ht+0x175ef, %rdi
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub $1883, %rsi
lea addresses_UC_ht+0x1a21d, %rsi
lea addresses_D_ht+0xcf57, %rdi
clflush (%rsi)
cmp $22646, %rbx
mov $75, %rcx
rep movsl
nop
nop
add $44624, %r15
lea addresses_WC_ht+0x7aaf, %r10
nop
nop
nop
add %r9, %r9
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
nop
nop
add $63753, %r11
lea addresses_WT_ht+0xedcf, %r10
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
nop
cmp $49015, %r11
lea addresses_WC_ht+0x134cf, %r10
nop
nop
nop
nop
sub %r11, %r11
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x152ef, %r10
nop
nop
sub %r11, %r11
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x1e6ef, %r10
nop
nop
nop
nop
nop
cmp %r15, %r15
movw $0x6162, (%r10)
nop
nop
nop
nop
xor $2819, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x194ef, %r14
clflush (%r14)
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r14)
xor $10939, %rcx

// Store
lea addresses_RW+0x1a33, %rdi
cmp $60617, %r13
movb $0x51, (%rdi)
nop
nop
nop
dec %rcx

// Store
lea addresses_normal+0x1016f, %rax
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rax)
nop
cmp %rcx, %rcx

// Store
lea addresses_RW+0x1f86f, %rbx
nop
nop
nop
sub $54649, %rax
movl $0x51525354, (%rbx)

// Exception!!!
mov (0), %r12
nop
xor %r14, %r14

// Store
mov $0x6ef, %rcx
nop
nop
nop
nop
nop
cmp $30945, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0x1eaef, %rax
clflush (%rax)
nop
add $65148, %rbx
movb (%rax), %cl
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
