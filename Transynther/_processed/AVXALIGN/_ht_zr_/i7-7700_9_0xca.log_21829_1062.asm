.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbaa9, %rsi
lea addresses_UC_ht+0xecec, %rdi
inc %r14
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x10359, %rsi
lea addresses_A_ht+0x17ad9, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $47, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x15259, %r12
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x1759, %rsi
lea addresses_UC_ht+0xcd8f, %rdi
cmp $15886, %r12
mov $88, %rcx
rep movsl
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x3f59, %rsi
lea addresses_A_ht+0x82d9, %rdi
nop
nop
nop
add %r14, %r14
mov $80, %rcx
rep movsb
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x12bd9, %rcx
nop
nop
nop
dec %r12
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
add $36560, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rdi
push %rdx

// Load
lea addresses_normal+0x1c759, %rax
nop
nop
nop
nop
nop
add %r10, %r10
mov (%rax), %r11
nop
nop
and $11577, %rax

// Store
mov $0xbf9, %rdx
nop
and %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovaps %ymm2, (%rdx)
nop
nop
nop
nop
nop
cmp $335, %rax

// Store
lea addresses_normal+0x10c9, %r10
clflush (%r10)
nop
nop
cmp $20630, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
cmp %rax, %rax

// Faulty Load
mov $0x2892180000000759, %r10
clflush (%r10)
nop
nop
nop
nop
add $60665, %rdi
vmovaps (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'46': 610, '45': 1408, '00': 19811}
00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 46 00 00 45 00 00 00 00 00 46 00 00 00 46 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00
*/
