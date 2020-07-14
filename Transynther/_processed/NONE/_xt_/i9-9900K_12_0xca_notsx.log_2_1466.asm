.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x127f, %rsi
lea addresses_UC_ht+0x7697, %rdi
add %r14, %r14
mov $16, %rcx
rep movsw
nop
nop
cmp $2430, %r11
lea addresses_WC_ht+0x1dc17, %rcx
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
add $24596, %r14
lea addresses_UC_ht+0xee37, %r15
nop
nop
nop
xor $25652, %rsi
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
and $55019, %r14
lea addresses_WT_ht+0x17337, %rdi
nop
nop
nop
add %r8, %r8
movl $0x61626364, (%rdi)
nop
dec %r8
lea addresses_D_ht+0x1e003, %rsi
sub $1081, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rsi
movntdq %xmm1, (%rsi)
cmp $2058, %r14
lea addresses_normal_ht+0x41b7, %rsi
lea addresses_D_ht+0xbc97, %rdi
nop
xor $51161, %r11
mov $77, %rcx
rep movsl
nop
xor $25950, %rcx
lea addresses_WT_ht+0xe297, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rdi)
nop
mfence
lea addresses_D_ht+0x1b95f, %rsi
nop
nop
nop
cmp $4434, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rsi
movntdq %xmm2, (%rsi)
add %r15, %r15
lea addresses_A_ht+0x457, %rsi
lea addresses_WT_ht+0x2017, %rdi
nop
nop
nop
cmp %r11, %r11
mov $63, %rcx
rep movsb
nop
nop
nop
nop
add $59322, %rcx
lea addresses_D_ht+0x17017, %rcx
nop
nop
dec %rdi
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x97ec, %rcx
nop
nop
nop
nop
add %rdi, %rdi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x1a217, %rsi
lea addresses_UC_ht+0xdc17, %rdi
nop
nop
nop
nop
xor $29839, %rbx
mov $127, %rcx
rep movsw
and $56387, %r8
lea addresses_normal_ht+0x8057, %rcx
and $11327, %rsi
movb (%rcx), %r11b
and %r15, %r15
lea addresses_UC_ht+0xf417, %rsi
lea addresses_A_ht+0x121f, %rdi
nop
nop
nop
nop
xor $58575, %rbx
mov $37, %rcx
rep movsw
nop
nop
nop
nop
add $37941, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x267, %r14
clflush (%r14)
dec %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
mov $0x817, %r11
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movntdq %xmm3, (%r11)
add $56008, %rcx

// Store
mov $0x23d5ed0000000562, %r11
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x4f37, %rdx
clflush (%rdx)
nop
add %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
sub $36016, %rcx

// Load
mov $0x6a7b970000000acb, %r14
sub $44104, %r10
mov (%r14), %rax
nop
nop
nop
and $48473, %rdx

// Faulty Load
lea addresses_WT+0x10c17, %r10
nop
nop
nop
nop
nop
and %r11, %r11
mov (%r10), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'39': 2}
39 39
*/
