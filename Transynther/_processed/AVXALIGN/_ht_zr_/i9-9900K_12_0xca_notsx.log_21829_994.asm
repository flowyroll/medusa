.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13582, %rsi
lea addresses_normal_ht+0x1d8d7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $57014, %r9
mov $96, %rcx
rep movsb
nop
sub %r15, %r15
lea addresses_normal_ht+0x5217, %r14
nop
nop
sub %rdi, %rdi
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
lfence
lea addresses_D_ht+0x182c7, %rsi
lea addresses_A_ht+0x1c5d7, %rdi
nop
nop
xor $24551, %rbx
mov $23, %rcx
rep movsb
dec %r14
lea addresses_UC_ht+0x240f, %rcx
nop
nop
xor $43482, %rsi
mov (%rcx), %r14w
nop
dec %rbx
lea addresses_WC_ht+0x1dfe3, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %rbx
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $14016, %rcx
lea addresses_WT_ht+0x849d, %rsi
nop
add $43268, %r9
movw $0x6162, (%rsi)
nop
nop
sub $18508, %rbx
lea addresses_UC_ht+0xc9d7, %rsi
lea addresses_WT_ht+0xe5d7, %rdi
cmp $40596, %r12
mov $16, %rcx
rep movsw
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x9317, %r14
clflush (%r14)
xor $10961, %rsi
movb $0x61, (%r14)
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x18b97, %r15
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %rbx
nop
sub $9906, %rcx
lea addresses_UC_ht+0xfd57, %rsi
lea addresses_D_ht+0x1117b, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $16, %rcx
rep movsl
nop
nop
and $23620, %r12
lea addresses_UC_ht+0x2fd7, %rcx
nop
nop
nop
nop
cmp $64786, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
xor $26364, %r14
lea addresses_UC_ht+0x1e5d7, %rbx
nop
nop
xor %r9, %r9
movl $0x61626364, (%rbx)
nop
nop
inc %rsi
lea addresses_WC_ht+0x11757, %rbx
nop
add %r9, %r9
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
and $45854, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi

// Load
lea addresses_WC+0x12dd7, %r11
xor %rdi, %rdi
mov (%r11), %r10w
nop
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x979, %rdi
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_PSE+0xb0f7, %r15
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%r15)
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_normal+0x1d5d7, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %r10, %r10
vmovaps (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'00': 9492, '48': 68, '44': 12269}
00 00 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 00 00 44 00 00 44 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 44 00 44 00 44 00 44 00 00 00 44 00 44 44 00 44 44 44 00 44 00 00 00 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 00 44 44 00 44 44 00 44 00 44 00 44 44 44 44 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 44 44 00 44 00 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 00 44 00 44 44 44 00 44 00 44 44 44 00 44 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 44 00 44 44 44 00 44 00 44 44 00 44 44 44 44 00 44 00 44 00 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 00 44 00 44 00 44 44 44 00 44 00 44 44 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 44 00 00 44 00 00 00 44 00 44 00 44 00 44 00 44 44 00 00 44 00 00 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 44 00 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 44 00 44 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 44 00 44 00 44 44 44 44 00 00 44 00 44 00 44 44 44 00 44 44 00 00 44 44 00 44 00 00 00 44 00 44 44 44 44 00 44 00 44 00 44 00 44 00 00 44 00 44 44 44 44 44 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 44 00 44 00 44 00 44 00 44 44 00 00 44 00 00 44 00 44 44 44 00 44 00 44 00 44 00 44 44 00 00 44 00 44 00 44 00 44 00 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 44 00 44 00 44 44 44 00 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 44 44 00 44 00 00 44 00 00 44 44 44 00 00 44 00 00 44 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 44 44 00 44 00 44 00 00 00 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 00 44 00 44 00 44 00 00 44 44 00 00 44 00 44 44 00 00 44 00 00 44 44 00 44 00 44 00 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 00 00 44 00 44 00 44 00 44 44 00 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 00 44 44 44 44 44 00 44 00 48 00 44 00 44 44 00 44 00 44 00 44 00 44 44 44 00 44 00 44 00 44 00 44 00 44 00 44 44 00 44 44 00 44 44 00 44 00 00 44 44 44 44 00 44 00 44 00 44 00 44 00 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 00 44 44 00 44 00 00 44 44 44 44 00 00 44 44 44 44 44 00 44 00 44 00 00 44 00 00 44 44 44 00 44 00 44 44 00 00 00 44 44 44 44 44 00 44 00 00 00 00 00 44 00 44 00 00 00 44 44 44 00 44 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 00 44 00 44 44 00 44 44 44 00 44 00 44 00 44 00 44 44 44 44 00 48 44 44 00 00 44 44 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 44 00 00 44 44 00 44 00 00 44 44 00 44 00 44 00 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 00 44 00 44 44 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 44 44 00 00 44 00 00 44 44 44 00
*/
