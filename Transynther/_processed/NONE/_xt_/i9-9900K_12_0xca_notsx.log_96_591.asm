.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x13c71, %rsi
lea addresses_UC_ht+0x1d871, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor $12783, %rdx
mov $116, %rcx
rep movsl
sub $59747, %r13
lea addresses_A_ht+0x6071, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r14), %r13
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xc071, %rsi
lea addresses_D_ht+0x7f51, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %r14, %r14
mov $57, %rcx
rep movsl
add %rdx, %rdx
lea addresses_A_ht+0x1de79, %rsi
lea addresses_UC_ht+0x1069, %rdi
nop
nop
dec %r9
mov $111, %rcx
rep movsb
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x9441, %r9
nop
nop
inc %rsi
movw $0x6162, (%r9)
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x55f1, %rdi
nop
nop
inc %rcx
movb (%rdi), %r9b
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x1d481, %rsi
lea addresses_normal_ht+0x219, %rdi
nop
nop
nop
sub $36203, %r12
mov $115, %rcx
rep movsl
nop
add $23835, %rdi
lea addresses_WC_ht+0x6071, %r12
nop
cmp %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x26b1, %rsi
lea addresses_A_ht+0x4671, %rdi
nop
nop
add $33256, %r12
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
and $52021, %r12
lea addresses_normal_ht+0x18ff1, %r12
nop
nop
nop
add $57851, %r14
movb (%r12), %r13b
and $2415, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x1a071, %r13
xor $44088, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
cmp %r11, %r11

// Store
mov $0x3eaf4400000007f9, %rdx
nop
dec %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
nop
xor $35056, %r8

// Faulty Load
lea addresses_WT+0xc871, %r8
clflush (%r8)
nop
nop
nop
nop
and $6343, %rax
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'39': 96}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
