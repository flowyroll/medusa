.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1af78, %r14
nop
nop
nop
nop
nop
xor $33542, %r13
mov (%r14), %rcx
sub %rsi, %rsi
lea addresses_D_ht+0xd778, %rdx
xor %r14, %r14
movl $0x61626364, (%rdx)
xor $56836, %r8
lea addresses_WC_ht+0x18978, %rsi
lea addresses_WT_ht+0x1178, %rdi
nop
nop
nop
dec %rbx
mov $100, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x7b78, %r8
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x19f8, %rbx
clflush (%rbx)
nop
nop
nop
cmp $17853, %r8
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
xor $54082, %rdx
lea addresses_D_ht+0x1e778, %rsi
lea addresses_WT_ht+0x1e378, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $55, %rcx
rep movsq
xor $20579, %r8
lea addresses_A_ht+0x125f8, %rsi
lea addresses_A_ht+0x194b8, %rdi
nop
xor $50785, %rbx
mov $39, %rcx
rep movsl
add %rbx, %rbx
lea addresses_WT_ht+0x11c06, %rdi
nop
nop
nop
nop
nop
xor $64449, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
cmp $47568, %rbx
lea addresses_WT_ht+0xfdfc, %r14
nop
nop
nop
nop
mfence
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x6778, %r9
nop
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
and $31655, %r11

// REPMOV
lea addresses_A+0x4f78, %rsi
lea addresses_D+0x9978, %rdi
nop
cmp $20647, %r13
mov $2, %rcx
rep movsb
nop
nop
and $41154, %r11

// Store
mov $0xd783f0000000199, %r11
inc %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
nop
cmp $57288, %r11

// Store
lea addresses_normal+0x13118, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
dec %r9

// Store
lea addresses_UC+0x17b78, %rbp
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbp)
sub $43957, %rdi

// Store
lea addresses_A+0x14778, %rbp
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbp)

// Exception!!!
nop
nop
mov (0), %rdi
nop
cmp $9034, %rbp

// Store
lea addresses_RW+0x12998, %r11
cmp $56996, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
nop
xor $8798, %rsi

// Store
lea addresses_UC+0x978, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
xor %rbp, %rbp

// Faulty Load
lea addresses_A+0x4f78, %rcx
and %r11, %r11
mov (%rcx), %bp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'35': 14}
35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
