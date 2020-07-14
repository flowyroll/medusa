.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d2d5, %rsi
lea addresses_WC_ht+0x194bd, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $25, %rcx
rep movsl
nop
nop
nop
and $24012, %rdx
lea addresses_UC_ht+0x18edd, %rsi
lea addresses_D_ht+0x1b95d, %rdi
nop
nop
nop
nop
xor $42732, %r12
mov $28, %rcx
rep movsl
nop
dec %rcx
lea addresses_WT_ht+0x4d5d, %r12
nop
nop
nop
inc %rdi
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xf95d, %rsi
sub %r10, %r10
movb (%rsi), %dl
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xc15d, %r12
nop
and %r14, %r14
movb $0x61, (%r12)
cmp %rdi, %rdi
lea addresses_D_ht+0xcfdd, %rsi
lea addresses_normal_ht+0x12fed, %rdi
nop
add %r13, %r13
mov $82, %rcx
rep movsb
nop
add %r10, %r10
lea addresses_UC_ht+0x1c1dd, %rsi
lea addresses_WC_ht+0x8585, %rdi
nop
nop
xor %r10, %r10
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $27616, %rcx
lea addresses_WC_ht+0x1155d, %r12
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r12)
nop
dec %r14
lea addresses_D_ht+0xb7bd, %rdi
nop
nop
nop
and $39503, %rcx
mov (%rdi), %r12
sub $3235, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_A+0x1161d, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovntdq %ymm6, (%rdi)
nop
nop
nop
nop
sub $8316, %rsi

// Store
lea addresses_WT+0x755d, %r13
nop
sub %rax, %rax
movl $0x51525354, (%r13)
nop
nop
nop
xor $52389, %r9

// Load
lea addresses_normal+0x9c95, %rsi
nop
nop
cmp %r12, %r12
mov (%rsi), %r13w
and %rax, %rax

// Faulty Load
lea addresses_PSE+0x415d, %r9
sub %rsi, %rsi
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'33': 9}
33 33 33 33 33 33 33 33 33
*/
