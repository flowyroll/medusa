.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x10877, %rdx
clflush (%rdx)
nop
nop
nop
cmp $58432, %rbx
movw $0x6162, (%rdx)
nop
nop
nop
sub $5569, %r8
lea addresses_normal_ht+0x148f7, %rsi
lea addresses_D_ht+0x6f61, %rdi
nop
nop
nop
nop
dec %r8
mov $25, %rcx
rep movsq
cmp %rbx, %rbx
lea addresses_WT_ht+0x9877, %rsi
lea addresses_WC_ht+0x18f81, %rdi
nop
nop
nop
cmp %r11, %r11
mov $110, %rcx
rep movsq
nop
sub $17045, %r11
lea addresses_A_ht+0x90b7, %r11
clflush (%r11)
nop
nop
cmp %rbx, %rbx
movb (%r11), %r14b
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x17925, %rcx
clflush (%rcx)
nop
sub %rbx, %rbx
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x164b7, %r8
nop
nop
and %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xb745, %r11
clflush (%r11)
nop
nop
sub $4322, %r14
movl $0x61626364, (%r11)
cmp $26473, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_WC+0x18cb7, %rdi
nop
nop
nop
and %r9, %r9
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'44': 9784, '46': 641, '49': 10558, '7f': 2, '66': 1, '00': 489, '45': 346, '90': 7, '7e': 1}
49 49 44 44 44 49 49 49 44 49 49 49 44 44 49 46 49 44 49 49 49 00 44 44 49 44 44 49 49 00 44 49 49 49 44 44 49 44 44 49 49 49 45 44 49 44 44 49 49 44 44 49 49 44 49 49 49 49 46 44 49 49 44 49 44 44 44 44 44 49 49 44 44 49 44 44 49 49 44 49 44 49 44 44 49 49 44 44 44 49 44 49 49 49 46 49 44 49 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 49 49 49 49 44 49 49 44 44 49 44 49 49 49 44 44 44 49 44 49 44 44 49 44 45 44 44 49 44 44 44 49 49 44 49 49 49 44 49 44 44 44 44 49 49 49 49 44 44 49 44 44 49 49 44 45 46 49 49 44 44 49 44 49 44 44 44 49 44 44 44 44 49 49 44 49 44 44 49 49 49 49 49 49 00 44 44 49 44 44 44 49 49 44 44 49 49 44 45 49 49 49 44 49 49 49 49 49 45 44 44 44 49 49 49 45 49 44 49 00 44 44 44 44 49 49 44 44 49 44 44 44 44 44 44 44 49 44 49 44 44 49 49 49 49 44 46 46 45 44 44 44 49 44 49 44 49 49 49 49 49 44 44 44 44 44 49 44 44 49 49 49 49 49 44 49 44 49 49 44 44 49 44 49 44 44 49 44 44 44 44 49 44 49 49 44 49 49 49 49 49 49 49 44 49 44 44 49 49 49 44 49 44 49 44 49 49 44 44 44 44 49 49 44 44 44 49 49 44 49 44 49 49 44 49 49 49 44 49 49 44 49 49 49 44 44 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 44 44 44 49 49 49 44 49 44 44 49 44 49 44 49 00 44 49 44 44 44 44 44 44 49 49 44 49 44 49 44 49 49 49 49 44 44 44 44 49 49 49 49 49 44 44 44 44 49 44 49 44 49 49 49 44 00 49 49 46 49 49 49 49 49 44 49 44 00 49 49 44 49 45 49 44 44 44 44 49 49 44 44 49 49 49 44 49 46 45 44 49 44 49 49 44 49 49 44 44 49 44 49 44 46 49 49 49 49 49 44 49 00 49 49 49 49 44 44 44 49 44 49 44 44 49 44 49 44 49 44 44 49 44 44 44 44 49 49 49 49 44 49 49 44 44 00 44 49 44 44 44 49 44 49 49 49 49 44 44 49 49 49 49 49 44 49 49 44 49 49 44 49 44 49 49 49 44 49 44 49 46 49 44 49 49 44 44 49 49 49 49 44 49 44 44 44 49 49 46 00 49 44 49 49 44 44 00 44 44 49 44 45 44 49 44 44 49 46 49 49 49 49 44 44 44 49 44 49 49 49 49 49 49 49 00 44 49 49 49 44 44 44 49 44 49 49 49 49 49 49 00 44 44 49 44 49 49 44 44 49 49 49 44 49 44 44 49 44 44 49 00 44 49 49 44 49 44 44 49 44 49 44 44 49 44 44 44 49 49 49 49 00 49 49 49 44 44 49 49 46 49 46 44 49 49 49 49 44 44 44 46 49 49 44 49 49 44 44 44 49 44 44 49 49 44 44 49 49 44 49 49 44 49 49 49 44 49 44 44 49 44 44 44 49 49 49 44 49 44 44 44 44 49 44 44 44 44 44 44 49 49 44 49 44 49 44 49 49 44 49 46 44 49 00 44 46 49 49 49 49 44 44 49 44 49 44 49 44 49 49 49 49 49 44 90 49 49 49 44 44 44 44 00 49 49 49 44 44 49 44 49 49 46 49 49 49 44 49 49 49 44 44 44 49 49 49 49 44 44 44 44 44 46 44 46 44 49 49 44 44 49 44 49 44 44 44 44 44 44 49 45 49 49 44 44 44 44 49 49 49 49 49 49 46 46 49 49 44 44 49 49 49 44 49 49 44 49 49 49 49 90 44 49 00 49 49 44 44 49 49 45 44 49 49 49 44 49 44 49 44 49 49 44 45 00 49 44 49 49 49 49 44 44 49 49 44 49 49 44 44 49 00 49 44 44 44 44 49 44 49 49 44 44 49 44 49 49 46 45 49 49 49 49 46 49 44 00 49 44 49 44 44 49 49 49 49 49 49 49 49 49 49 44 44 49 44 49 44 49 49 49 49 44 44 44 49 49 49 46 44 44 00 49 46 49 44 49 49 49 49 49 49 44 44 44 49 49 49 44 49 44 49 44 49 49 66 49 44 44 49 49 00 49 49 49 49 49 44 44 49 44
*/
