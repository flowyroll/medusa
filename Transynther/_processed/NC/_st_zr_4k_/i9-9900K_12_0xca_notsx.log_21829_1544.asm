.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18c4c, %rsi
lea addresses_WC_ht+0x17c4c, %rdi
nop
nop
nop
dec %r8
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x244c, %r13
nop
nop
cmp $17187, %rcx
movb (%r13), %dl
sub $45407, %rdi
lea addresses_A_ht+0x844c, %rsi
lea addresses_normal_ht+0x2f0e, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r14
mov $49, %rcx
rep movsl
nop
nop
nop
and $44199, %rdi
lea addresses_UC_ht+0xc59c, %r13
nop
dec %rdi
movb (%r13), %r14b
nop
nop
nop
nop
nop
add $46245, %r14
lea addresses_UC_ht+0x5bd4, %rsi
lea addresses_WT_ht+0x17070, %rdi
add $57528, %r14
mov $110, %rcx
rep movsw
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xe44c, %r13
nop
nop
nop
xor %rcx, %rcx
mov (%r13), %r8w
nop
nop
nop
sub $50248, %rdi
lea addresses_WC_ht+0x2ab0, %rcx
nop
nop
xor $35927, %rdx
movw $0x6162, (%rcx)
nop
nop
xor $39757, %rdx
lea addresses_UC_ht+0x2fc, %r13
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%r13), %r14b
nop
xor %r13, %r13
lea addresses_D_ht+0xb44c, %r13
nop
nop
inc %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x103ec, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
cmp $47527, %rsi
lea addresses_normal_ht+0xaf4c, %rdi
cmp %r13, %r13
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x944c, %r14
clflush (%r14)
nop
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
sub $8465, %rdi
lea addresses_normal_ht+0xce0c, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%r14), %r13b
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0x1bc4c, %rbx
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
nop
xor $9271, %rcx

// Store
lea addresses_WT+0xa198, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add $22174, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_D+0x1610c, %rbx
nop
nop
nop
nop
nop
and %rax, %rax
movl $0x51525354, (%rbx)
add %rdi, %rdi

// Faulty Load
mov $0x63f5200000000c4c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $56451, %rdx
mov (%rdi), %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'00': 7918, '58': 13911}
00 58 00 58 58 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 00 58 58 00 58 00 58 58 00 58 00 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 00 58 00 58 00 58 58 58 00 00 00 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 00 00 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 00 58 00 00 00 58 00 58 00 00 58 58 00 58 58 58 58 00 58 00 58 58 00 00 00 00 00 58 58 00 00 58 00 00 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 00 58 00 00 00 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 00 00 00 58 58 58 00 00 58 58 00 00 58 58 58 00 00 58 00 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 00 58 58 00 58 00 00 58 58 58 00 00 58 00 00 58 00 58 58 00 00 58 00 58 00 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 58 00 00 58 00 58 58 00 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 00 58 00 00 00 58 00 00 58 00 00 00 58 00 58 58 58 00 58 00 58 58 00 58 00 00 00 00 58 58 00 58 58 58 58 58 00 00 58 00 58 58 58 00 00 00 58 58 58 58 00 00 58 58 00 58 58 00 00 58 58 58 58 58 00 58 58 00 58 00 00 00 00 00 58 58 58 58 00 00 58 00 58 00 58 58 58 00 00 00 00 58 00 00 58 58 00 00 00 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 00 58 58 58 00 00 00 58 58 58 00 58 00 58 00 00 58 00 58 58 58 58 58 00 00 58 58 58 00 58 58 00 00 58 00 58 58 00 58 58 58 00 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 00 00 58 58 58 00 58 58 58 00 58 58 00 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 00 00 58 58 58 00 00 58 58 00 00 00 58 00 58 58 00 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 00 00 00 58 58 00 00 58 58 00 58 58 00 00 58 58 00 58 00 58 58 00 58 00 58 00 58 58 58 00 00 58 58 00 58 58 00 58 00 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 00 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 58 58 58 00 58 00 58 58 58 00 00 58 00 58 00 58 00 58 00 00 58 00 58 00 58 00 00 00 58 58 58 58 00 58 00 58 58 58 00 00 58 00 00 00 58 58 58 58 58 58 00 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 00 58 58 00 58 00 58 58 58 00 00 58 58 00 00 00 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 00 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 00 00 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 00 00
*/
