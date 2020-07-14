.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7dde, %rsi
lea addresses_UC_ht+0x16dbd, %rdi
clflush (%rsi)
nop
add %r12, %r12
mov $58, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x16365, %r8
clflush (%r8)
cmp %r10, %r10
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
add $57031, %rdi
lea addresses_A_ht+0x151bd, %rsi
lea addresses_WC_ht+0x96bd, %rdi
nop
nop
nop
nop
inc %rbx
mov $10, %rcx
rep movsb
nop
sub $10523, %rbx
lea addresses_UC_ht+0x1677d, %rdi
nop
nop
nop
nop
nop
sub $46058, %r8
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
add $55541, %rbx
lea addresses_A_ht+0x45bd, %rcx
nop
nop
nop
nop
xor %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x196a7, %r8
clflush (%r8)
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_A+0x1fcbd, %r11
nop
nop
nop
sub $4563, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r11)
xor %r15, %r15

// Faulty Load
lea addresses_A+0xe9bd, %r9
clflush (%r9)
nop
nop
nop
nop
add $46883, %rsi
movaps (%r9), %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'46': 2312, '48': 15, '00': 11440, '40': 7, '45': 7811, '47': 242, '20': 2}
00 00 00 00 45 00 45 46 00 00 00 45 00 45 46 00 45 46 00 45 00 45 00 00 00 40 00 45 00 00 00 00 00 45 45 46 00 45 45 46 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 45 00 45 46 00 45 45 00 45 45 46 00 45 00 45 46 00 45 46 00 45 45 47 46 00 45 00 00 00 45 45 00 00 45 00 45 46 45 45 46 00 00 00 45 45 00 45 46 45 45 46 00 45 00 45 00 45 46 00 45 00 45 46 45 45 46 00 45 46 00 45 46 00 45 46 00 00 00 00 00 00 45 00 00 45 00 00 45 45 00 45 45 45 46 00 45 45 45 46 00 45 46 00 00 45 47 46 00 00 00 45 45 45 45 00 00 00 00 00 45 00 45 46 00 45 46 45 46 45 45 45 00 00 00 00 45 45 46 45 45 46 45 45 46 00 45 00 45 46 00 45 00 48 00 45 45 00 00 45 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 45 00 45 46 00 00 45 45 45 45 00 45 45 45 45 46 00 00 00 45 46 00 45 45 45 46 00 45 46 00 45 00 45 00 45 46 45 45 48 45 46 00 45 00 00 45 00 00 00 45 45 46 00 45 48 00 00 00 45 00 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 45 00 45 00 00 00 00 00 45 47 46 00 45 00 00 45 00 45 46 00 00 00 00 00 45 00 00 45 00 45 45 46 00 00 45 45 45 46 00 00 45 45 45 00 00 00 00 45 46 00 00 00 00 00 00 00 00 45 45 00 45 46 00 00 00 00 00 45 45 46 00 45 00 00 45 00 00 45 45 46 00 45 46 00 46 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 45 00 45 45 00 00 45 00 45 00 45 46 45 45 46 45 45 46 00 45 00 45 46 00 00 00 45 00 00 45 45 00 00 00 00 00 00 45 45 00 00 45 45 46 00 00 00 00 45 00 00 00 45 45 00 45 00 45 45 00 45 46 00 45 00 45 46 00 45 46 00 45 00 45 46 00 00 00 00 45 46 45 45 00 00 00 00 45 45 47 46 00 45 00 00 00 45 45 00 00 00 00 45 00 00 45 45 46 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 00 00 00 45 45 46 00 45 00 45 45 00 00 00 45 46 00 45 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 45 45 46 00 45 46 00 00 00 45 00 45 46 00 00 00 00 45 00 00 00 00 45 00 00 45 00 45 00 45 45 46 45 45 46 00 00 45 45 46 45 45 46 00 45 00 45 46 00 45 45 47 46 00 45 46 00 45 46 00 00 00 45 00 00 45 00 45 00 00 00 00 45 00 00 00 45 45 00 45 46 00 00 00 00 45 45 45 46 00 45 46 00 00 45 45 45 00 00 00 45 45 45 00 45 00 45 45 00 00 45 45 46 45 45 00 45 00 45 00 45 46 00 00 00 45 45 00 45 00 00 45 00 45 00 00 00 00 00 45 45 00 00 45 00 00 00 00 00 00 45 45 45 45 00 00 00 00 00 00 45 46 00 45 45 45 46 00 00 00 45 46 00 00 45 45 46 00 45 00 45 45 00 00 45 45 46 45 45 00 45 46 45 45 00 00 00 00 45 00 45 00 00 00 00 00 00 45 46 45 45 45 00 00 45 45 45 45 00 45 46 00 00 00 45 45 00 00 00 00 45 45 45 45 00 45 46 00 45 46 45 00 00 45 45 45 46 00 45 47 00 00 00 00 00 45 45 46 45 45 00 00 45 00 45 46 45 45 00 00 45 00 45 46 45 45 00 00 45 45 45 46 00 00 00 45 00 00 00 00 00 45 45 46 00 00 45 00 45 46 45 45 46 45 45 46 45 45 46 45 45 46 00 45 00 45 00 45 46 00 45 46 45 45 46 45 45 00 00 00 00 00 00 45 00 00 00 00 45 46 45 45 46 45 45 46 00 45 45 45 46 45 45 00 00 00 00 45 00 45 46 00 00 00 45 46 00 00 00 00 00 00 45 46 00 45 46 00 45 00 45 00 45 45 00 45 00 00 00 00 00 45 45 00 45 45 00 00 00 45 46 00 45 00 00 00 00 00 00 45 45 00 45 00 00 45 45 00 45 45 46 00 00 00 00 00 45 47 45 46 00
*/
