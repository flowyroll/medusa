.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1acfc, %rsi
lea addresses_UC_ht+0x6a34, %rdi
nop
sub %r14, %r14
mov $106, %rcx
rep movsw
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x5374, %r15
nop
nop
nop
nop
and $36440, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xf0b4, %rsi
lea addresses_A_ht+0x14074, %rdi
clflush (%rdi)
cmp $41505, %r9
mov $84, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x11cb4, %rsi
lea addresses_WT_ht+0x19134, %rdi
clflush (%rsi)
nop
nop
add $53063, %rbp
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $584, %r15
lea addresses_A_ht+0x103b4, %rsi
lea addresses_WC_ht+0xb4, %rdi
nop
sub $1135, %r9
mov $115, %rcx
rep movsl
nop
cmp %r14, %r14
lea addresses_normal_ht+0x19d90, %r9
nop
nop
nop
mfence
movb (%r9), %r15b
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x19674, %r9
add %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x75d4, %r9
nop
nop
nop
xor $62457, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
cmp $23437, %rbp
lea addresses_WC_ht+0x178b4, %rsi
lea addresses_UC_ht+0x4d74, %rdi
clflush (%rdi)
nop
nop
nop
dec %r15
mov $121, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x12998, %rsi
lea addresses_WT_ht+0x1e3f4, %rdi
nop
nop
cmp $3024, %r13
mov $7, %rcx
rep movsl
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rsi

// Store
lea addresses_WT+0x1ce4c, %r14
clflush (%r14)
nop
nop
and %rsi, %rsi
movb $0x51, (%r14)
nop
sub $39174, %r12

// Load
lea addresses_UC+0x1eec4, %r12
nop
nop
nop
nop
nop
xor %r10, %r10
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
and %r12, %r12

// Store
mov $0x4f066600000008b4, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $34031, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
sub $52597, %r10

// Store
lea addresses_RW+0x1c734, %r10
nop
nop
nop
add $15089, %r15
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
mov $0x76697500000008b4, %rbx
nop
nop
and %r12, %r12
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'45': 7145, '00': 12208, '46': 2475, '72': 1}
00 00 45 00 45 46 46 46 00 00 00 00 45 00 45 00 45 45 00 45 46 46 00 00 45 00 00 00 46 45 00 00 45 00 46 00 45 45 00 00 45 00 45 46 00 45 45 00 00 00 45 00 45 00 45 00 00 00 45 46 00 00 00 00 45 00 00 00 45 00 45 45 46 45 00 00 45 00 45 00 45 45 00 45 45 00 00 00 45 45 00 00 45 00 00 00 46 00 00 00 45 00 45 00 00 45 00 00 45 45 00 46 00 00 00 46 45 00 00 00 00 45 46 45 45 45 00 46 45 00 46 00 45 00 45 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 46 45 00 00 45 00 00 00 45 00 00 45 00 45 00 45 00 45 45 46 00 00 00 00 00 45 45 00 46 45 00 45 00 45 45 00 00 00 00 46 00 45 45 00 46 00 45 00 00 45 46 45 00 46 00 45 00 00 45 00 45 46 45 00 00 00 00 00 45 00 45 00 45 45 46 45 45 00 45 00 46 00 46 00 00 45 46 00 45 00 00 45 00 46 00 00 46 46 45 00 00 45 00 00 45 00 46 00 45 00 00 46 00 45 45 00 46 00 45 46 45 00 45 46 45 45 00 00 00 45 00 45 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 45 00 45 45 45 45 45 45 45 46 00 00 46 00 00 45 00 00 00 00 00 00 00 45 46 00 46 45 00 00 45 00 00 00 00 46 00 00 00 45 00 45 45 00 00 45 45 00 45 00 45 45 00 45 45 00 00 00 45 00 45 45 00 45 45 00 45 45 45 00 45 46 00 00 00 00 45 45 45 45 00 00 45 45 00 00 00 00 45 45 00 45 00 45 00 45 00 00 00 00 00 45 00 00 46 00 00 45 46 00 00 00 45 00 00 46 45 00 45 46 00 45 45 00 45 00 45 00 46 00 45 45 00 00 00 45 45 00 00 46 45 00 00 46 45 46 00 00 45 46 00 45 45 00 00 45 45 00 00 45 45 00 00 46 45 00 45 45 00 00 45 00 00 00 00 00 00 45 00 00 00 45 46 45 00 00 45 00 00 00 00 45 00 00 45 00 00 00 45 00 45 00 46 45 45 00 00 45 00 45 00 00 45 00 00 00 45 45 45 00 00 00 46 00 45 00 00 00 45 00 00 00 00 45 00 45 45 00 46 00 45 00 00 45 00 45 00 00 00 46 00 45 45 45 46 46 45 45 00 00 45 45 00 00 45 45 45 00 45 45 00 00 00 45 46 00 00 45 45 45 00 00 45 00 45 45 00 00 45 45 00 46 46 00 00 00 45 46 00 00 45 45 45 00 00 00 45 45 45 00 46 45 00 00 45 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 46 46 45 00 00 00 00 00 00 45 00 46 45 00 00 45 00 00 46 45 00 00 45 45 00 45 00 45 00 45 00 00 00 00 00 46 00 45 45 45 45 00 45 00 45 00 00 45 00 45 45 45 00 00 00 00 46 45 45 00 00 45 00 00 00 00 00 46 45 00 00 46 00 00 00 00 45 00 00 45 46 00 00 00 45 45 45 45 45 00 45 00 45 00 46 00 46 45 00 45 00 00 46 45 00 00 00 00 00 00 00 00 45 00 45 45 46 46 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 45 00 00 00 45 46 45 00 45 00 00 46 00 45 00 45 45 45 00 45 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 45 00 00 45 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 45 45 00 00 00 00 00 00 00 00 46 45 00 00 00 45 00 00 00 45 00 00 45 00 46 00 00 45 46 45 00 46 00 00 45 46 00 45 00 45 00 00 00 00 45 00 45 00 00 45 00 45 00 00 45 00 46 45 00 45 00 00 45 46 45 00 45 45 00 45 46 46 46 00 45 00 00 00 45 00 00 00 45 00 45 46 00 00 45 00 46 00 00 45 00 45 00 00 45 00 00 00 45 00 45 45 45 46 45 45 46 00 46 45 00 46 46 45 46 46 00 46 45 45 45 00 00 45 00 00 00 00 45 00 00 00 00 45 45 46 46 00 00
*/
