.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1350f, %r11
nop
nop
and $17842, %r15
mov (%r11), %r13w
nop
cmp %r13, %r13
lea addresses_A_ht+0xbfac, %r14
cmp %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r14)
sub %r8, %r8
lea addresses_normal_ht+0xd11f, %r8
nop
nop
nop
inc %r10
mov (%r8), %r13d
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1084f, %rsi
lea addresses_WC_ht+0x199ef, %rdi
nop
nop
dec %r10
mov $56, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x31e8, %rsi
lea addresses_WT_ht+0x10f9b, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $28, %rcx
rep movsw
nop
and $16974, %r13
lea addresses_WT_ht+0x92ef, %r14
nop
nop
nop
nop
nop
add $61757, %rdi
movb $0x61, (%r14)
nop
sub %r14, %r14
lea addresses_D_ht+0x386f, %rsi
lea addresses_WT_ht+0x8eaf, %rdi
add %r14, %r14
mov $19, %rcx
rep movsq
nop
nop
nop
and $10647, %r8
lea addresses_A_ht+0xd609, %rsi
lea addresses_WT_ht+0x1a290, %rdi
nop
nop
nop
nop
nop
xor %r13, %r13
mov $51, %rcx
rep movsw
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1360f, %r15
nop
and $52990, %rcx
movb $0x61, (%r15)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xa6fb, %rcx
nop
nop
nop
nop
xor $1165, %rsi
movb (%rcx), %r8b
nop
nop
cmp $33163, %rdi
lea addresses_normal_ht+0x14fef, %rsi
lea addresses_D_ht+0x1bef, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15
mov $34, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x19757, %rsi
lea addresses_normal_ht+0xd557, %rdi
nop
nop
nop
and %r11, %r11
mov $44, %rcx
rep movsl
nop
nop
nop
nop
nop
add $50615, %rdi
lea addresses_WC_ht+0x6fef, %r14
nop
nop
cmp $54286, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xcbef, %rsi
lea addresses_WC_ht+0x19def, %rdi
nop
nop
nop
nop
cmp $61934, %r14
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
mov $0x62e81400000003ef, %r10
nop
nop
sub %rdx, %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $33684, %rax

// Store
lea addresses_A+0x1baeb, %r15
clflush (%r15)
nop
nop
nop
nop
sub $18231, %r8
movb $0x51, (%r15)
xor %rax, %rax

// Store
lea addresses_PSE+0xbef, %r8
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_PSE+0x16bef, %r8
nop
nop
nop
nop
nop
xor $57217, %r10
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'33': 4}
33 33 33 33
*/
