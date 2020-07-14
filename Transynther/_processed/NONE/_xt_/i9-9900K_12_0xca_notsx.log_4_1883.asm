.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ad08, %rax
sub $442, %r8
mov (%rax), %cx
sub %rdi, %rdi
lea addresses_A_ht+0x1d378, %rdx
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm2, (%rdx)
nop
nop
inc %r14
lea addresses_A_ht+0x1ed78, %rsi
lea addresses_WC_ht+0x6778, %rdi
nop
nop
nop
nop
dec %r11
mov $48, %rcx
rep movsb
nop
nop
nop
and $43157, %rdx
lea addresses_A_ht+0xf978, %rsi
nop
and %rdx, %rdx
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
xor $63133, %rdi
lea addresses_A_ht+0x1b078, %rdi
nop
nop
nop
add %r8, %r8
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x6178, %rsi
lea addresses_A_ht+0x5d38, %rdi
and %r8, %r8
mov $15, %rcx
rep movsb
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x4038, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add $51639, %rdx
mov (%rsi), %di
nop
nop
nop
nop
xor $6903, %rax
lea addresses_A_ht+0x1cf78, %rsi
lea addresses_normal_ht+0x1c190, %rdi
nop
nop
nop
nop
xor $8549, %rax
mov $35, %rcx
rep movsq
nop
inc %rsi
lea addresses_normal_ht+0x1db78, %rax
nop
and $57572, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xa098, %rdx
nop
nop
nop
nop
nop
sub $25709, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rdx)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x15f78, %r11
nop
nop
add $64182, %rdi
mov (%r11), %esi
nop
add %rdi, %rdi
lea addresses_WC_ht+0x15160, %rsi
lea addresses_normal_ht+0xcb78, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $14, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $33246, %r8
lea addresses_normal_ht+0x6778, %rsi
lea addresses_UC_ht+0x1e78, %rdi
nop
nop
nop
xor $59289, %r11
mov $28, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x2a48, %rsi
lea addresses_UC_ht+0x15764, %rdi
nop
nop
nop
and %r14, %r14
mov $25, %rcx
rep movsq
nop
sub $45156, %r8
lea addresses_D_ht+0x19a3a, %rsi
clflush (%rsi)
nop
nop
nop
mfence
movl $0x61626364, (%rsi)
nop
nop
nop
and $27488, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rax
push %rdi
push %rdx

// Store
mov $0xedc, %rdx
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
nop
nop
nop
nop
and $55827, %r14

// Store
lea addresses_WC+0x4b78, %r12
clflush (%r12)
nop
nop
cmp $59248, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movaps %xmm1, (%r12)
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_PSE+0x1cb78, %rax
cmp %r14, %r14
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1}}
{'33': 4}
33 33 33 33
*/
