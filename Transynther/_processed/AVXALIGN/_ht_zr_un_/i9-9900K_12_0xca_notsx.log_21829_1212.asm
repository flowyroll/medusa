.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19042, %r10
clflush (%r10)
nop
nop
nop
nop
add $61906, %rbx
mov (%r10), %rbp
nop
nop
nop
and $26861, %r8
lea addresses_A_ht+0x18f1a, %rsi
lea addresses_normal_ht+0x5342, %rdi
clflush (%rsi)
nop
nop
nop
and $35609, %r9
mov $119, %rcx
rep movsw
and %r10, %r10
lea addresses_A_ht+0x1d5a2, %r8
nop
nop
nop
sub $55186, %r9
movb (%r8), %cl
nop
nop
nop
nop
nop
add $28908, %rbp
lea addresses_UC_ht+0x16c12, %rsi
add %rcx, %rcx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x171a2, %rsi
lea addresses_normal_ht+0x75f2, %rdi
nop
nop
and $55756, %rbx
mov $78, %rcx
rep movsq
cmp $17986, %rsi
lea addresses_WC_ht+0x15142, %r9
nop
nop
nop
nop
inc %rcx
movl $0x61626364, (%r9)
cmp %rdi, %rdi
lea addresses_UC_ht+0x1eb42, %rsi
lea addresses_normal_ht+0x6b52, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x14d39, %rcx
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
cmp $6034, %r9
lea addresses_WT_ht+0x1da42, %rsi
lea addresses_UC_ht+0x19b42, %rdi
nop
nop
cmp $27285, %r9
mov $35, %rcx
rep movsb
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x72ae, %rbx
clflush (%rbx)
nop
nop
dec %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm5, (%rbx)
nop
nop
nop
xor $30999, %r10
lea addresses_WT_ht+0x9d02, %rbp
nop
nop
nop
dec %rsi
movb (%rbp), %cl
nop
add $17411, %rbx
lea addresses_A_ht+0x905e, %rsi
lea addresses_A_ht+0x12d02, %rdi
nop
cmp $65130, %r9
mov $30, %rcx
rep movsq
nop
nop
nop
nop
xor $26556, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_A+0x12742, %rdi
clflush (%rdi)
cmp $34132, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x342, %r14
nop
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%r14)

// Exception!!!
mov (0), %r8
nop
nop
nop
sub $11428, %rbp

// Store
lea addresses_WT+0x1702a, %r12
nop
xor $3865, %rdi
movw $0x5152, (%r12)
xor %r14, %r14

// Store
mov $0x1835d00000000942, %r14
xor %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
sub $58030, %rdi

// Load
lea addresses_normal+0x3d42, %r11
nop
cmp %rbp, %rbp
movaps (%r11), %xmm5
vpextrq $0, %xmm5, %r14
xor $363, %r11

// Store
mov $0x5349c40000000c1b, %r11
nop
nop
cmp $28043, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovntdq %ymm1, (%r11)
xor %r14, %r14

// Faulty Load
lea addresses_normal+0x3d42, %rdi
nop
dec %r11
movntdqa (%rdi), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'e6': 1, 'd2': 1, '80': 2, '00': 277, '45': 21547, '47': 1}
00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
