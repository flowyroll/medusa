.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19853, %r10
nop
nop
nop
nop
nop
add $4360, %rsi
mov (%r10), %r12
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1873, %r14
nop
nop
sub $32884, %rsi
movl $0x61626364, (%r14)
nop
and %rbp, %rbp
lea addresses_D_ht+0x10d93, %rsi
add %r11, %r11
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
cmp %rsi, %rsi
lea addresses_A_ht+0x14a93, %rdx
nop
nop
nop
nop
add %r11, %r11
movb (%rdx), %r14b
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x1b95f, %r12
nop
nop
nop
nop
sub $12797, %rbp
mov (%r12), %r14d
add %r14, %r14
lea addresses_UC_ht+0x10653, %rsi
lea addresses_WT_ht+0xdc53, %rdi
nop
nop
nop
nop
and $12871, %r14
mov $82, %rcx
rep movsw
nop
nop
sub $37665, %rcx
lea addresses_D_ht+0x16fa3, %r14
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%r14)
nop
nop
nop
nop
cmp $2078, %rdx
lea addresses_WT_ht+0x9823, %rsi
lea addresses_WT_ht+0x1d53, %rdi
nop
nop
nop
nop
nop
sub $35288, %r11
mov $65, %rcx
rep movsw
nop
nop
xor $32055, %r10
lea addresses_normal_ht+0x19653, %r14
nop
nop
xor %r10, %r10
mov (%r14), %r11d
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x454d, %rsi
lea addresses_UC_ht+0x3c53, %rdi
clflush (%rsi)
nop
cmp $35611, %r10
mov $83, %rcx
rep movsl
nop
nop
nop
and $34406, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x6791ce0000000eb3, %r14
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
xor $12321, %rdi

// Faulty Load
mov $0x48837c0000000453, %rcx
clflush (%rcx)
nop
cmp $56937, %r15
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'46': 306, '00': 4912, '49': 9, '44': 595}
00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 44 00 00 00 00 00 00 00 46 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 46 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 46 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 46 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 46 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 46 00 44 00 00 00 00 00 00 00 00 00 00 00 46 00 00 44 00 00 00 00 00 00 44 00 44 49 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 44 00 00 00 00 00 00 46 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 44 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 46 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 44 00 00 44 00 46 00 00 46 00 44 00 00 00 00 00 44 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 46 00 46 44 00 00 00 00 00 46 00 00 00 00 00 00 44 00 00 00 00 00 46 44 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 44 46 00 00 00 44 00 00 49 00 00 00 00 00 00 00 00 44 00 00 00 49 00 00 00 00 44 44 00 00 00 44 00 00 46 44 00 44 44 00 00 44 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 46 00 00 44 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 44 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 46 00 00 00 44 00 00 00 00 00 00 44 00 00 00 46 44 00 00 00 00 00 00 00 00 00 00
*/
