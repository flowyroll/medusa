.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xca62, %r15
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
sub $41837, %rbx
lea addresses_A_ht+0x38a4, %r11
nop
nop
nop
nop
and $9092, %r14
mov (%r11), %r13w
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0x57a4, %r13
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0xbee4, %rsi
lea addresses_WT_ht+0xc77e, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $82, %rcx
rep movsw
nop
nop
nop
sub $63753, %rsi
lea addresses_WC_ht+0x97e4, %r11
nop
sub $7265, %rbx
movb $0x61, (%r11)
nop
nop
nop
xor $25231, %rbx
lea addresses_A_ht+0x26e6, %r14
nop
dec %r11
movl $0x61626364, (%r14)
xor $64512, %rsi
lea addresses_normal_ht+0x7fe4, %rsi
lea addresses_UC_ht+0xbde4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $11, %rcx
rep movsb
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x16ef8, %rsi
nop
and $59156, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
add $61333, %r11
lea addresses_UC_ht+0x12084, %r14
dec %r15
mov (%r14), %si
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x5e4, %r14
nop
sub %r11, %r11
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xa664, %rsi
lea addresses_A_ht+0x117e4, %rdi
nop
nop
nop
nop
inc %r13
mov $84, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x183e4, %rsi
lea addresses_WT_ht+0x1b1e4, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r14, %r14
mov $3, %rcx
rep movsl
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x7fe4, %rsi
sub %rbx, %rbx
movb (%rsi), %r14b
nop
nop
nop
nop
nop
sub $36508, %rbx
lea addresses_A_ht+0xd4c4, %rsi
lea addresses_WT_ht+0x175c4, %rdi
nop
nop
nop
cmp %r11, %r11
mov $38, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1d2dc, %rsi
lea addresses_UC_ht+0x13664, %rdi
nop
nop
nop
nop
add $5336, %r14
mov $41, %rcx
rep movsb
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x6be4, %rsi
lea addresses_WT+0x3974, %rdi
cmp %rax, %rax
mov $52, %rcx
rep movsq
nop
nop
inc %rsi

// Faulty Load
lea addresses_normal+0xabe4, %rcx
nop
nop
add $56228, %rbp
mov (%rcx), %r9d
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'34': 121}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
